<?php
// Autoloader inclusion
require_once 'vendor/autoload.php';

// DB configuration
conf\Configuration::config();

// Slim app creation
$app = new \Slim\Slim(array(
    'templates.path' => 'app/view',
    'debug' => true
));

// Do not forget sessions...
session_start ();

//
// Now routing definition
//

// Get routes
$app->get('/', function() use ($app) {
    $c = new AnonymousController($app);
    $c->index();
})->name('root');

$app->get('/test', function() use ($app) {
    $c = new AnonymousController($app);
    $c->yopla();
})->name('testname');

$app->get('/item/:id', function($id) use ($app) {
    $c = new AnonymousController($app);
    $c->affiche_item($id);
})->name('affitem');

// Post routes
$app->post('/ajout_info', function() use ($app) {
    $c = new AnonymousController($app);
    $c->insert_info();
});
 
// Finally, generate result
$app->run();
