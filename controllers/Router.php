<?php

class Router
{
    private $ctrl; #détermine le controlleur que l'on souhaite
    private $view;

    public function routeReq(){


        try {
            //Chargement automatique des classes du dossier models
            spl_autoload_register(function ($class){
                require_once ('models/'.$class.'.php');
            });

            //Crée une variable $url
            $url = "";

            //On vas déterminer le controleur en
            //fonction de la valeur de cette variable
            if (isset($_GET['url'])){
                //on décompose l'url et on lui applique un filtre
                $url = explode('/', filter_var($_GET['utrl'],FILTER_SANITIZE_URL));

                //on récupère le premier paramètre de l'url
                //on le met tout en minuscule
                //on met sa première lettre en majuscule
                $controller = ucfirst(strtolower($url[0]));

                $controllerClass = "Controller".$controller;

                //on retrouve le chemin du controleur désiré
                $controllerFile = "Controller/".$controllerClass.".php";

                //on check si le fichier du controleur existe
                if (file_exists($controllerFile)){
                    //on lance la classe en question
                    //avec tous les paramètre url
                    //pour respecter l'encapsulation
                    require_once ($controllerFile);


                    $this->ctrl = new $controllerClass($url);
                }
                else{
                    throw new \Exception("Page introuvable", 1);
                }
            }
            else{
                require_once('controllers/ControllerAccueil.php');
                $this->ctrl = new ControllerAccueil($url);
            }


        }catch (\Exception $e){
            $errorMsg = $e->getMessage();
            require_once('views/viewError.php');
        }
    }
}