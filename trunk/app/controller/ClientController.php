<?php

use app\models\Client;
use app\models\Voiture;

class ClientController extends Controller
{
    public function getClients() {

        // Charge la liste de tous les utilisateurs qui ont le statut membre
        $clients = Client::all();

        AnonymousController::header();
        Controller::$app->render('clients/clients.php', array('clients' => $clients));
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function getClient($id) {

        $app = new \Slim\Slim();

        $client = Client::whereId($id)->first();

        AnonymousController::header();
        Controller::$app->render('clients/client.php', array('client' => $client));
        //AnonymousController::modals();
        AnonymousController::footer();

    }


    public function addClient() {

        AnonymousController::header();
        Controller::$app->render('clients/add_client.php');
        AnonymousController::footer();

    }

    public function addClientComplete() {

        $app = new \Slim\Slim();

        $client = new Client();
        $array = $app->request->params();

        $client->addClient($array);

        $clients = Client::all();
        AnonymousController::header();
        Controller::$app->render('clients/clients.php', array('clients' => $clients));
        //AnonymousController::modals();
        AnonymousController::footer();

    }

    public function editClient($id) {

        $app = new \Slim\Slim();

        $client = Client::whereId($id)->first();

        $array = $app->request->params();

        $client->editClient($array);

        AnonymousController::header();
        Controller::$app->render('clients/client.php', array('client' => $client));
        //AnonymousController::modals();
        AnonymousController::footer();

    }
    
    public function getClientByImmatriculation($immat) {

        $clientId = Voiture::where('immatriculation', $immat)->select('client_id')->first();
        $clientNom = Client::whereId($clientId['client_id'])->select('nom', 'prenom')->first();
        $client['id'] = $clientId;
        $client['nom'] = $clientNom['nom'];
        $client['prenom'] = $clientNom['prenom'];
        print(json_encode($client));

    }
    
    public function getClientsForFactures() {
        
        $clients = Client::select(array('id', 'nom', 'prenom'))->get();
        print(json_encode($clients));
        
    }
}