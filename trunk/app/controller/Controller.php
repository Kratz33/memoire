<?php

use Slim\Slim;

class Controller {

    // Initialization impossible here: Slim does not yet exist!
    protected static $app;

    public function __construct(){
	if (empty(Controller::$app))
	    Controller::$app = Slim::getInstance();
    }
}

?>
