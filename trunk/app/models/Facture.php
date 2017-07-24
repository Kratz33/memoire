<?php


namespace app\models;


use Symfony\Component\Security\Acl\Exception\Exception;

class Facture extends \Illuminate\Database\Eloquent\Model{

    protected $table = 'facture';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function addFacture($valueArray) {

        // calculate the id (gloups)
        $debutFacture = date("y") . date("m") . $valueArray['lieu'];
        $lastFacture = Facture::where('id', 'LIKE', $debutFacture . "%")->orderBy('id', 'desc')->first();
        if(isset($lastFacture)) {
            $endFacture = substr($lastFacture['id'],6,2) + 1;
            $this->id = $debutFacture . $endFacture;
        }
        else {
            $this->id = $debutFacture . 1;
        }

        for($i=0; $i<count($valueArray['reference']); $i++) {
            $arrayTexte['reference'][]    =  $valueArray['reference'][$i];
            $arrayTexte['prix'][]     =  $valueArray['prix'][$i];
            $arrayTexte['designation'][] =  $valueArray['designation'][$i];
            $arrayTexte['quantite'][] =  $valueArray['quantite'][$i];
        }
        $texte = json_encode($arrayTexte);

        try {
            //$this->date           = $valueArray['nom'];
            $this->kilometrage      = $valueArray['kilometrage'];
            $this->texte            = $texte;
            $this->observations     = $valueArray['observations'];
            $this->moyen_paiement   = $valueArray['moyen-paiement'];
            $this->accompte         = $valueArray['accompte'];
            $this->immatriculation  = $valueArray['immatriculation'];
            $this->client_id        = $valueArray['client-id'];
            $this->lieu             = $valueArray['lieu'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }

    public function editFacture($valueArray) {

        for($i=0; $i<count($valueArray['reference']); $i++) {
            $arrayTexte['reference'][]    =  $valueArray['reference'][$i];
            $arrayTexte['prix'][]     =  $valueArray['prix'][$i];
            $arrayTexte['designation'][] =  $valueArray['designation'][$i];
            $arrayTexte['quantite'][] =  $valueArray['quantite'][$i];
        }
        $texte = json_encode($arrayTexte);
        try {
            $this->kilometrage      = $valueArray['kilometrage'];
            $this->texte            = $texte;
            $this->observations     = $valueArray['observations'];
            $this->moyen_paiement   = $valueArray['moyen-paiement'];
            $this->accompte         = $valueArray['accompte'];
            $this->immatriculation  = $valueArray['immatriculation'];
            $this->client_id        = $valueArray['client-id'];
            $this->lieu         = $valueArray['lieu'];
            $this->save();
        }
        catch (\Exception $e) {
            var_dump($e);
        }
    }

    public function getId() {
        return $this->id;
    }
}
?>