<?php

abstract class Model
{

    private static $_bdd;

    //connexion à la bdd
    private static function setBdd()
    {
        self::$_bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8','root','');

        //on utilise les constantes de PDO pour gèrer les erreurs
        self::$_bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
    }


    //fonction de connexion par défaut à la bdd
    protected function getBdd()
    {

        if (self::$_bdd == null)
        {
            self::setBdd();
            return self::$_bdd;
        }

    }

    //création de la méthode de récupération de liste d'éléments
    //dans la bdd
    protected function getAll($table, $obj)
    {

        $this->getBdd();
        $var = [];
        $req = self::$_bdd->PDO::prepare('SELECT * FROM '.$table.' ORDER BY id desc');
        $req-> PDOStatement::execute();

        //on vas crée la variable data qui
        // vas contenir les données
        while ($data = $req->PDO::fetch(PDO::FETCH_ASSOC))
        {
            //$var contiendra les données sous forme d'objets
            $var[] = new $obj($data);
        }

        $req->PDO::closeCursor();

        return $var;

    }
}