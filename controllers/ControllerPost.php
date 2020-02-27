<?php


require_once 'views/View.php';

class ControllerPost
{

    private $_articleManager;
    private $_view;

    public function __construct()
    {
        if (isset($url) && count($url) < 1){
            new \Exception("page introuvable", 1);
        }
        else{
            $this->articles();
        }
    }

    private function articles()
    {
        if (isset($_GET['id'])){
            $this->_articleManager = new ArticleManager;
            $articles = $this->_articleManager->getArticles($_GET['id']);
            $this->_view = new View('SinglePost');
            $this->_view->generate(array('article' => $articles));
        }

    }
}