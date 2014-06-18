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
            __DIR__ . '/../../config/autoload/local.config.php',
        ),
        'module_paths' => array(
            'Application' => __DIR__ . '/../../module/Application',
            'Cron' => __DIR__ . '/../../module/Cron',
            'Administration' => __DIR__ . '/../../module/Administration',
        ),
    ),
);
