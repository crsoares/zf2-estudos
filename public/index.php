<?php

ini_set('date.timezone',"Europe/Paris");

// Setup autoloading
chdir(dirname(__DIR__));
include 'init_autoloader.php';

// Run the application!
Zend\Mvc\Application::init(include 'config/application.config.php')->run();
