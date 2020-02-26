<?php

class ControllerAccueil
{

    private $_articleManager;
    private $_view;

    public function __construct($url)
    {
        if (isset($url) && count($url) > 1){
            throw new \Exception("page introuvable", 1);
        }
        else{
            $this->articles();
        }
    }

    public function articles()
    {
        $this->_articleManager = new ArticleManager();
        $articles = $this->_articleManager->getArticles();
        require_once ('../views/viewAccueil.php');
    }
}