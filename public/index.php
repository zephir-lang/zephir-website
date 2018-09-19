<?php

/** Autoloader */

use Monolog\Formatter\LineFormatter;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Phalcon\Config;
use Phalcon\Di;
use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\Micro;
use Phalcon\Mvc\View\Engine\Volt;
use Phalcon\Mvc\View\Simple;
use Website\ErrorHandler;
use function Website\Core\appPath;

require '../app/autoload.php';

/**
 * DI Container
 */
$container = new FactoryDefault();
Di::setDefault($container);

/** Create the application */
$app = new Micro($container);

/**
 * Config
 */
$data = require(appPath('app/config.php'));
$config = new Config($data);
$container->setShared('config', $config);

/**
 * Logger
 */
$logFile = appPath('storage/logs/application.log');
$formatter = new LineFormatter("[%datetime%][%level_name%] %message%\n");
$logger = new Logger('zephir-logger');
$handler = new StreamHandler($logFile, Logger::DEBUG);
$handler->setFormatter($formatter);
$logger->pushHandler($handler);

$container->setShared('logger', $logger);

/**
 * Error Handler
 */
date_default_timezone_set($config->path('timezone'));
ini_set('display_errors', 'Off');
error_reporting(E_ALL);

$handler = new ErrorHandler($logger, $config);
set_error_handler([$handler, 'handle']);
register_shutdown_function([$handler, 'shutdown']);

/**
 * View service
 */

$options = [
    'compiledPath'      => appPath('/storage/cache/'),
    'compiledSeparator' => '_',
    'compiledExtension' => '.php',
    'compileAlways'     => boolval($config->path('devMode')),
    'stat'              => true,
];

$view = new Simple();
$view->setViewsDir(appPath('/app/views/'));
$view->registerEngines(
    [
        '.volt' => function ($view) use ($options, $container) {
            $volt = new Volt($view, $container);
            $volt->setOptions($options);

            return $volt;
        },
    ]
);

$container->setShared('viewSimple', $view);

/** Register routes */
$app->get(
    '/',
    function () use ($app) {
        return $app->response->redirect('en');
    }
);

$app->get(
    '/{lang:[a-z]{2}}',
    function () use ($app) {
        // the values must have a translation file in storage/languages/{$language}.json
        $languages = [
            'en' => 'English', // first is default
            'zh' => 'ChineseSimplified',
            'el' => 'Greek',
            'ru' => 'Russian',
            'es' => 'Spanish',
            'uk' => 'Ukranian',
        ];

        $lang = $app->getRouter()->getParams()['lang'] ?? null;

        // current language
        $language = isset($languages[$lang]) ? $lang : current($languages);

        $data = file_get_contents(appPath("storage/languages/{$language}.json"));
        $data = json_decode($data, true);

        $output = $app->viewSimple->render(
            'index',
            [
                'languages' => $languages,
                'language'  => $language,
                'langData'  => $data,
            ]
        );

        return $output;
    }
);

$app->notFound(
    function () {
        echo 'not found';
    }
);

/** Handle routes */
$app->handle();
