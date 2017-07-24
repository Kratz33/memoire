<?php

use app\models\Voiture;
use app\models\Client;
use app\models\Facture;

class FactureController extends Controller
{
    public function getFactures() {

        // Charge la liste de tous les utilisateurs qui ont le statut membre
        $factures = Facture::all();
        foreach($factures as $facture) {
            $client = Client::whereId($facture['client_id'])->first()->toArray();
            $facture['nom-prenom'] = $client['nom'] . " " . $client['prenom'];
        }

        AnonymousController::header();
        Controller::$app->render('factures/factures.php', array('factures' => $factures));
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function getFacture($id) {

        $app = new \Slim\Slim();

        $facture = Facture::whereId($id)->first();
        $client = Client::whereId($facture['client_id'])->first();
        $immats = Voiture::orderBy('immatriculation', 'ASC')->lists('immatriculation');
        $facture['nom-prenom'] = $client['nom'] . " " . $client['prenom'];

        AnonymousController::header();
        Controller::$app->render('factures/facture.php', array(
            'facture' => $facture,
            'immatriculations' => $immats,
            'client' => $client,
            )
        );
        //AnonymousController::modals();
        AnonymousController::footer();


    }


    public function addFacture() {

        AnonymousController::header();
        $immats = Voiture::orderBy('immatriculation', 'ASC')->lists('immatriculation');
        Controller::$app->render('factures/add_facture.php', array('immatriculations' => $immats));
        AnonymousController::footer();

    }

    public function addFactureComplete() {

        $app = new \Slim\Slim();

        $facture = new Facture();
        $array = $app->request->params();

        $facture->addFacture($array);

        $this->getFactures();
    }

    public function editFacture($id) {

        $app = new \Slim\Slim();

        $array = $app->request->params();

        $facture = Facture::whereId($id)->first();
        $facture->editFacture($array);
        $client = Client::whereId($facture['client_id'])->first();
        $immats = Voiture::orderBy('immatriculation', 'ASC')->lists('immatriculation');
        $facture['nom-prenom'] = $client['nom'] . " " . $client['prenom'];

        AnonymousController::header();
        Controller::$app->render('factures/facture.php', array(
                'facture' => $facture,
                'immatriculations' => $immats,
                'client' => $client,
            )
        );
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function getGeneratedFacture($id)
    {

        $facture = Facture::whereId($id)->first();
        $voiture = Voiture::where('immatriculation', $facture['immatriculation'])->first();
        $client = Client::whereId($facture['client_id'])->first();

        $pdf = new TCPDF();
        $pdf->SetFont('times', '', 16);
        $pdf->SetMargins(10, 0, 10, true);

        // add a page
        $pdf->AddPage();

        $html = '<style>
        td { border: 1px solid black; text-indent : 10px; line-height: 15px; }
        .cgu td { text-indent: 0px; }
        .need-line-height td { height: 30px; line-height: 30px;}
        .border-line { height: 10px; background: #cccccc}
        .t-center { text-align: center; }
        .f20px { font-size: 15px; line-height: 25px; }
        .width90p { width: 90%;}
        .td-facture {text-transform: uppercase; font-size: 12px;}
        .td-title {font-size: 10px;}
        </style>
        <body style="font-size: 10px;">
            <div>
                <div style="text-align: center">
                    <img src="/nc_auto/img/header_nc_auto.jpg" style="width: 700px;"/>
                </div>
                <div style="background-color: #cccccc;"></div>
                    <table style="font-size: 15px; background-color: #E6E6E6; border-top: #cccccc 10px solid; border-bottom: #cccccc 10px solid; ">
                        <tr>
                            <td style="border: none;"><p>GARAGE NC AUTO <br/>
                                ZA Les Combelles <br/>
                                52150 Goncourt <br/>
                                Tél / Fax:  03.25.03.25.66</p>
                              </td>
                              <td style="text-align: right; border: none;">N° Siret: 53326309100019 <br/>
                                N° TVA: FR04533263091 <br/>
                                APE: 4520A – SARL6000 <br/>
                                MAIL : garagencauto@orange.fr
                               </td>
                        </tr>       
                    </table>
                    <div style="background-color: #cccccc;"></div>
                    <div style="font-size: 14px;">
                         ' .$client["nom"] . " " . $client["prenom"] . " "
            . $client["adresse"] . " " . $client["code_postal"] . " " . $client["ville"] . '
                    </div>
                 <div style="text-align: center;">
                     « TVA non applicable, article 293B du Code général des impôts »
                </div>
                </div>
                <div class="col-xs-12">
                    <table class="need-line-height">';
        $date = substr($facture['date'], 8, 2)
            . "/" . substr($facture['date'], 5, 2)
            . "/" . substr($facture['date'], 0, 4);
        $html .= '      
                        <tr>
                            <td style="line-height: 18px;"><b>Facture : <span class="td-facture">' . $facture['id'] . '</span></b></td>
                            <td><b>Date : ' . $date . '</b></td>
                            <td><b>Immatricul : ' . $voiture['immatriculation'] . '</b></td>
                        </tr>
                        <tr>
                            <td><b>Marque : ' . $voiture['marque'] . ' </b></td>
                            <td><b>Modèle : ' . $voiture['modele'] . ' </b></td>
                            <td><b>Kilométrage : ' . $facture['kilometrage'] . '</b></td>
                        </tr>
                    </table>
                </div>
                <div>
                    <table class="need-line-height">
                        <tr>
                            <td class="td-title"><b>Qté/Temps</b></td>
                            <td class="td-title"><b>Référence</b></td>                            
                            <td class="td-title"><b>Désignation</b></td>
                            <td class="td-title"><b>Prix unitaire TTC</b></td>
                            <td class="td-title"><b>Total TTC</b></td>
                        </tr> ';

        $arrayText = json_decode($facture['texte'], true);
        $totalFacture = 0;
        for ($i = 0; $i < count($arrayText['reference']); $i++) {
            $totalLigne = number_format((float)$arrayText['prix'][$i] * $arrayText['quantite'][$i], 2, '.', '');
            $html .= '<tr>
                                <td>' . $arrayText['quantite'][$i] . '</td>
                                <td>' . $arrayText['reference'][$i] . '</td>                                
                                <td>' . $arrayText['designation'][$i] . '</td>
                                <td>' . number_format((float)$arrayText['prix'][$i], 2, '.', '') . '</td>
                                <td>' . $totalLigne . '</td>
                             </tr>';
            $totalFacture += $totalLigne;
        }
        $html .= '<x></x>
                    </table>
                </div>';
                if($facture["observations"]) {
                     $html .= '<div><div> 
                        Observations : 
                    </div><div>' . $facture["observations"] .'</div></div>';
                }
                $html .= '
                <div>
                    <table class="cgu" style="width: 100%;">
                        <tr>
                            <td style="width: 70%; line-height: 8px;"><u>CONDITIONS GENERALES DE VENTE</u> : <br/>
                                <u>- Pénalités de retard :</u>  exigible le lendemain de la date de règlement , 3 fois le taux de l\'intérêt légal, soit 2,13 % en 2012 (3 x 0,71 %). , sans mise en demeure préalable - art. L.441-6.<br/>
                                - A partir du 1er janvier 2013, une indemnité forfaitaire de recouvrement doit également être appliquée, de 40 € par facture non payée à l’échéance -art. D. 441-5du Code de Commerce.<br/>
                                <u>- Réserves de propriété :</u> Les marchandises restent notre propriété jusqu\'à règlement complet.
                            </td>
                            <td style="width: 15%">Acompte</td>
                            <td style="width: 15%">';
        if ($facture['accompte'] != null) {
            $html .= number_format((float)$facture['accompte'], 2, '.', '') . '€';
        } else {
            $html .= ' - ';
         }
        $html .='</td>
                        </tr>
                        <tr>
                            <td><span style="font-size: 10px; line-height: 12px;"><u><i>En votre aimable règlement</i> .<b>Condition de règlement :</b></u>
                                <br/>Paiement comptant et sans escompte lors de la reprise du véhicule.</span>
                            </td>
                            <td><b>Total</b></td>
                            <td><b>' . number_format((float)$totalFacture,2, '.', '') . '€</b></td>
                        </tr>';
        if($facture['moyen_paiement'] != null) {
                            $html .= '<tr>
                                <td colspan="3" class="t-center f20px">PAYÉ : ' .$facture['moyen_paiement'] . '</td>
                            </tr> ';
        }
                    $html .= '</table>
                </div>
            </div>
        </body>';

        // print html formated text
        $pdf->writeHtml($html);

        $output = "facture-" . $facture['id'] . "-" . htmlspecialchars_decode($client['nom']) . "-" . htmlspecialchars_decode($client['prenom']) . "-" . $voiture['immatriculation'] . ".pdf";
        //Close and output PDF document
        $pdf->Output($output, 'F');

        Controller::$app->render('factures/generate_facture.php', array(
            'facture' => $facture,
            'voiture' => $voiture,
            'client'  => $client,
            'url'     => $output
        ));

    }

    public function getFacturesByClient($clientIdId) {

        $factures = Facture::where('client_id', $clientIdId )->get();
        AnonymousController::header();
        Controller::$app->render('factures/factures.php', array(
            'factures' => $factures,
        ));
        AnonymousController::footer();

    }


}