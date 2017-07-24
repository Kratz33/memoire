<?php


namespace app\models;


use Symfony\Component\Security\Acl\Exception\Exception;

class Client extends \Illuminate\Database\Eloquent\Model{

    protected $table = 'client';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function addClient($valueArray) {
        try {
            $this->nom           = $valueArray['nom'];
            $this->prenom        = $valueArray['prenom'];
            $this->adresse       = $valueArray['adresse'];
            $this->code_postal   = $valueArray['code-postal'];
            $this->ville         = $valueArray['ville'];
            $this->telephone     = $valueArray['telephone'];
            $this->mail          = $valueArray['mail'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }

    public function editClient($valueArray) {
        try {
            $this->nom           = $valueArray['nom'];
            $this->prenom        = $valueArray['prenom'];
            $this->adresse       = $valueArray['adresse'];
            $this->code_postal   = $valueArray['code-postal'];
            $this->ville         = $valueArray['ville'];
            $this->telephone     = $valueArray['telephone'];
            $this->mail          = $valueArray['mail'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }

    public function getId() {
        return $this->id;
    }

    public function getNom() {
        return $this->nom;
    }

    public function getPrenom() {
        return $this->prenom;
    }
}
?>