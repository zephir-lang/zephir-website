<?php

use function Website\Core\envValue;

return [
    'version'  => '1.0',
    'siteUrl'  => envValue('APP_URL', 'http://127.0.0.1'),
    'timezone' => envValue('APP_TIMEZONE', 'US/Eastern'),
    'devMode'  => boolval('development' === envValue('APP_ENV', 'development')),
    'url'      => envValue('APP_URL', 'http://127.0.0.1'),
    'name'     => envValue('APP_NAME', 'Zephir Website'),
    'baseUri'  => envValue('APP_BASE_URI', '/'),
    'time'     => microtime(true),
];
