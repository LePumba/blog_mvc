<?php

class Router
{
    private $ctrl; #détermine le controlleur que l'on souhaite
    private $view;

    public function routeReq()
    {

        try {
            //Chargement automatique des classes du dossier models
            spl_autoload_register(function ($class){
                require_once ('models/'.$class.'.php');
            });
            //
            //
            //Crée une variable $url
            $url = '';
            //
            //détermine le controleur en
            //fonction de la valeur de cette variable
            if (isset($_GET['url'])){
                //décompose l'url et lui applique un filtre
                $url = explode('/', filter_var($_GET['utrl'],FILTER_SANITIZE_URL));
                //
                //récupère le premier paramètre de l'url
                //le met tout en minuscule
                //#ex: localhost/index.php?url=accueil/article
                //          [Accueil, article]
                //met sa première lettre en majuscule
                $controller = ucfirst(strtolower($url[0]));
                //
                //retrouve le bon controleur
                $controllerClass = "Controller".$controller;
                //
                //retrouve le chemin du controleur désiré
                $controllerFile = "Controller/".$controllerClass.".php";
                //
                //check si le fichier du controleur existe
                if (file_exists($controllerFile)){
                    //lance la classe en question
                    //avec tous les paramètres url
                    //pour respecter l'encapsulation (regroupe des données brutes)
                    require_once ($controllerFile);
                    //
                    //instance la class (créer un objet à partir d'un modèle)
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