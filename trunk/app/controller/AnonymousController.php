<?php

use app\models\Billet;
use app\models\Categorie;

class AnonymousController extends Controller {

    public static function header() {
		$app = Controller::$app;
		$app->render('front/header.php',compact('app'));
    }

    public static function footer() {
		Controller::$app->render('front/footer.php');
    }

    public static function index(){

		$app = new \Slim\Slim();

		AnonymousController::header();
		Controller::$app->render('front/homepage.php');
		//AnonymousController::modals();
		AnonymousController::footer();
    }

}

?>
