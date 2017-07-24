<?php

use app\models\Client;
use app\models\Voiture;

class VoitureController extends Controller
{
    public function getVoitures() {

        $voitures = Voiture::all();

        AnonymousController::header();
        Controller::$app->render('voitures/voitures.php', array('voitures' => $voitures));
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function getVoiture($immatriculation) {

        $voiture = Voiture::whereImmatriculation($immatriculation)->first();
        $clients = Client::all();

        AnonymousController::header();
        Controller::$app->render('voitures/voiture.php', array('voiture' => $voiture, 'clients' => $clients));
        //AnonymousController::modals();
        AnonymousController::footer();


    }


    public function addVoiture() {

        $clients = Client::all();

        AnonymousController::header();
        Controller::$app->render('voitures/add_voiture.php', array('clients' => $clients));
        AnonymousController::footer();

    }

    public function addVoitureComplete() {

        $app = new \Slim\Slim();

        $voiture = new Voiture();
        $array = $app->request->params();

        $voiture->addVoiture($array);

        $voitures = Voiture::all();
        AnonymousController::header();
        Controller::$app->render('voitures/voitures.php', array('voitures' => $voitures));
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function editVoiture($immatriculation) {

        $app = new \Slim\Slim();

        $voiture = Voiture::whereImmatriculation($immatriculation)->first();

        $array = $app->request->params();

        $voiture->editVoiture($array);

        $this->getVoitures();

    }

    public function getImmats() {

        $voiture = Voiture::select(array('immatriculation'))->get();
        print(json_encode($voiture));

    }

}