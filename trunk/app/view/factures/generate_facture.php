<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 06/01/2017
 * Time: 14:33
 */
?>

<!DOCTYPE html>
<html lang="fr">
<head >
    <title>Smart Up</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="scale=1.0" />

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/nc_auto/css/bootstrap/bootstrap.min.css" media="screen" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="/nc_auto/css/font-awesome.min.css" media="screen" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="/nc_auto/css/materialize.css" media="screen" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="/nc_auto/css/style.css" media="screen" type="text/css" rel="stylesheet"/>

</head>
<body class="row">
    <div class="col-xs-8 col-xs-offset-2">
        <div class="col-xs-12 t-center">
            <img src="/nc_auto/img/header_nc_auto.jpg" style="width: 100%"/>
        </div>
        <div class="col-xs-12">
            <div class="col-xs-12 border-line"></div>
            <div class="col-xs-12 bg-grey">
                <div class="col-xs-6 t-left">
                    GARAGE NC AUTO <br/>
                    ZA Les Combelles <br/>
                    52150 Goncourt <br/>
                    Tél / Fax:  03.25.03.25.66  <br/>
                </div>
                <div class="col-xs-6 t-right">
                    N° Siret: 53326309100019 <br/>
                    N° TVA: FR04533263091 <br/>
                    APE: 4520A – SARL6000 <br/>
                    MAIL : garagencauto@orange.fr  <br/>
                </div>
            </div>
            <div class="col-xs-12 border-line"></div>
            <div class="col-xs-12 t-center">
                « TVA non applicable, article 293B du Code général des impôts »
            </div>
        </div>
        <div class="col-xs-12">
            <table class="width120pc">
                <?php $date = substr($facture['date'],8,2)
                    . "/" . substr($facture['date'],5,2)
                    . "/" . substr($facture['date'],0,4);
                ?>
                <tr>
                    <?php
                        $realFactureId = substr($facture['id'], 0, 4) . "bu" . substr($facture['id'], 4,2);
                    ?>
                    <td><b>Facture: <?php echo $realFactureId ?></b></td>
                    <td><b>Date: <?php echo $date ?></b></td>
                    <td><b>Immatricul: <?php echo $voiture['immatriculation'] ?></b></td>
                </tr>
                <tr>
                    <td><b>Marque: <?php echo $voiture['marque'] ?></b></td>
                    <td><b>Modèle: <?php echo $voiture['modele'] ?></b></td>
                    <td><b>Kilométrage: <?php echo $facture['kilometrage'] ?></b></td>
                </tr>
            </table>
        </div>
        <div class="col-xs-12 mt20">
            <table>
                <tr>
                    <td>Référence</td>
                    <td>Qté/Temps</td>
                    <td>Désignation</td>
                    <td>Prix unitaire TTC</td>
                    <td>Total TTC</td>
                </tr>
                <?php $arrayText = json_decode($facture['texte'], true) ?>
                <?php $totalFacture = 0 ?>
                <?php for($i=0; $i<count($arrayText['reference']); $i++): ?>
                    <?php $totalLigne = number_format((float)$arrayText['prix'][$i] * $arrayText['quantite'][$i], 2, '.', '') ?>
                    <tr>
                        <td><?php echo $arrayText['reference'][$i] ?></td>
                        <td><?php echo $arrayText['quantite'][$i] ?></td>
                        <td><?php echo $arrayText['designation'][$i] ?></td>
                        <td><?php echo number_format((float)$arrayText['prix'][$i], 2, '.', '') ?></td>
                        <td><?php echo $totalLigne ?></td>
                     </tr>
                    <?php $totalFacture += $totalLigne ?>
                <?php endfor; ?>
            </table>
        </div>
        <?php if($facture['observations']) : ?>
            <div class="col-xs-12 mt20">
                Observation : <br/>
                <?php echo $facture['observations'] ?>
            </div>
        <?php endif ?>
        <div class="col-xs-12">
            <table class="width120pc mt20">
                <tr>
                    <td>CONDITIONS GENERALES DE VENTE :
                        - Pénalités de retard :  exigible le lendemain de la date de règlement , 3 fois le taux de l'intérêt légal, soit 2,13 % en 2012 (3 x 0,71 %). , sans mise en demeure préalable - art. L.441-6.
                        - A partir du 1er janvier 2013, une indemnité forfaitaire de recouvrement doit également être appliquée, de 40 € par facture non payée à l’échéance -art. D. 441-5du Code de Commerce.
                        - Réserves de propriété : Les marchandises restent notre propriété jusqu'à règlement complet.
                    </td>
                    <td>Acompte</td>
                    <td>
                        <?php
                            if($facture['accompte'] != null) {
                                echo number_format((float)$facture['accompte'], 2, '.', '') . "€";
                            }
                            else echo "/";
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>En votre aimable règlement .Condition de règlement :
                        Paiement comptant et sans escompte lors de la reprise du véhicule.
                    </td>
                    <td>Total</td>
                    <td><?php echo number_format((float)$totalFacture,2, '.', '') ?>€</td>
                </tr>
                <?php if($facture['moyen_paiement'] != null): ?>
                    <tr>
                        <td colspan="3" class="t-center f25px">PAYÉ : <?php echo $facture['moyen_paiement'] ?></td>
                    </tr>
                <?php endif; ?>
            </table>
        </div>
    </div>
    <div class="col-xs-12 t-center mt40">
        <a target="_blank" class="btn-btn" href="../<?php echo $url ?>"> Accéder au pdf de la facture </a>
    </div>
</body>