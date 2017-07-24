<?php
// Autoloader inclusion
require_once 'vendor/autoload.php';

// Accesses
use conf\Router;
use conf\Configuration;
use Slim\Slim;
use Illuminate\Database\Capsule\Manager as DB;

// DB configuration
Configuration::config();

// Slim app creation
$app = new Slim(array(
    'templates.path' => 'app/view',
    'debug' => true
));

// Do not forget sessions...
session_start ();

if(isset($_SESSION['userProfile']) && isset($_SESSION['userPseudo']) && isset($_SESSION['userId'])) {
    $app->setCookie(
        'userProfile',
        $_SESSION['userProfile'],
        '7 days'
    );
    $app->setCookie(
        'userPseudo',
        $_SESSION['userPseudo'],
        '7 days'
    );
    $app->setCookie(
        'userId',
        $_SESSION['userId'],
        '7 days'
    );
    $_SESSION['userPremium'] = 1;
    $_SESSION['userType'] = 2;
    $_SESSION['message'] = '';
}

//
// Now routing definition
//

// Set routes

$router = new Router($app, 'conf/routes', '');
$router->parseRoutes();

// Finally, generate result
$app->run();
