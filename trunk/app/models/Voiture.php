<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:52
 */

namespace app\models;


use Symfony\Component\Security\Acl\Exception\Exception;

class Voiture extends \Illuminate\Database\Eloquent\Model{

    protected $table = 'voiture';
    protected $primaryKey = 'immatriculation';
    public $timestamps = false;

    public function addVoiture($valueArray) {
        try {
            $this->immatriculation = $valueArray['immatriculation'];
            $this->marque          = $valueArray['marque'];
            $this->modele          = $valueArray['modele'];
            if(isset($valueArray['numero-moteur'])) {
                $this->numero_moteur = $valueArray['numero-moteur'];
            }
            $this->client_id = $valueArray['client-id'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }

    public function editVoiture($valueArray) {
        try {
            $this->marque = $valueArray['marque'];
            $this->modele = $valueArray['modele'];
            if($valueArray['numero-moteur']) {
                $this->numero_moteur = $valueArray['numero-moteur'];
            }
            $this->client_id = $valueArray['client-id'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }
}

