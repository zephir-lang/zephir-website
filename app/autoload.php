<?php

use Phalcon\Loader;

use Dotenv\Dotenv;
use function Website\Core\appPath;

// Register the auto loader
require __DIR__ . '/functions.php';

$loader     = new Loader();
$namespaces = [
    'Website'             => appPath('/app/library'),
    'Website\Cli\Tasks'   => appPath('/app/tasks/'),
    'Website\Controllers' => appPath('/app/controllers'),
];

$loader->registerNamespaces($namespaces);
$loader->register();

/**
 * Composer Autoloader
 */
require appPath('/vendor/autoload.php');

// Load environment
(new Dotenv(appPath()))->overload();
