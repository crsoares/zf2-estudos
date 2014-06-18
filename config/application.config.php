<?php
return array(
    'modules' => array(
        'Application',
        'Cron',
	'Administration',
    ),
    'module_listener_options' => array( 
        'config_cache_enabled' => false,
        'cache_dir' => 'data/cache',
        'config_static_paths' => array(
            __DIR__ . '/autoload/local.config.php',
        ),
        'module_paths' => array(
            'Application' => __DIR__ . '/../module/Application',
            'Cron' => __DIR__ . '/../module/Cron',
            'Administration' => __DIR__ . '/../module/Administration',
        ),
        'lazy_loading' => array(
            'Cron' => array(
            	'sapi' => 'cli',
            ),
            'Administration' => array(
            	'remote_addr' => array('127.0.0.1'),
            ),
        ),
    ),
    'service_manager' => array(
        'factories'    => array(
            'ModuleManager' => 'ZFMLL\Mvc\Service\ModuleManagerFactory',
        ),
    ),
);
