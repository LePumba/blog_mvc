<?php


class Article
{
    private $_id;
    private $_titre;
    private $_contenu;
    private $_date_creation;

    public function __construct(array $data)
    {
        $this->hydrate($data);
    }

    //hydratation (création des setters du tableau rendu de la bdd)
    public function hydrate(array $data){
        foreach ($data as $key => $value){
            $method = 'set'.ucfirst($key);
            if (method_exists($this, $method)){
                $this->$method($value);
            }
        }
    }


    //setters

    public function setId($id)
    {
        $id = (int) $id;
        if ($id > 0){
            $this->_id = $id;
        }
    }

    public function setTitle($title)
    {
        if (is_string($title)){
            $this->_titre = $title;
        }
    }

    public function setContent($content)
    {
        if (is_string($content)){
            $this->_contenu = $content;
        }
    }

    public function setDate($date)
    {
        $this->_date_creation = $date;
    }

    //getters

    public function id()
    {
        return $this->_id;
    }

    public function title()
    {
            return $this->_titre;
    }

    public function content(){
            return $this->_contenu;
    }

    public function date()
    {
            return $this->_date_creation;
    }


}