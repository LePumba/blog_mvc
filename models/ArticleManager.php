<?php


class ArticleManager extends Model
{

    //On vas créer la fonction qui vas récupérer tout les articles dans la bdd
    public function getArticles(){
        return $this->getAll("articles","Article");
    }



}