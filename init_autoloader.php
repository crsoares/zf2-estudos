<?php

require_once __DIR__ . '/vendor/ZF2/library/Zend/Loader/AutoloaderFactory.php';
Zend\Loader\AutoloaderFactory::factory(array(
    'Zend\Loader\StandardAutoloader' => array(
        'autoregister_zf' => true,
        'namespaces' => array(
            'ZendGData' => __DIR__ . '/vendor/ZF2/library/ZendGData',
            'ZendService' => __DIR__ . '/vendor/ZF2/library/ZendService',
            'ZendRest' => __DIR__ . '/vendor/ZF2/library/ZendRest',
        ),
    ),
    'Zend\Loader\ClassMapAutoloader' => array(
        __DIR__ . '/config/autoload_classmap.php'
    ),
));