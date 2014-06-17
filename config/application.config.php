<?php

return array(
	'module_listener_options' => array(
		'lazy_loading' => array(
			'Cron' => array(
				'sapi' => 'cli',
			),
			'Administration' => array(
				'port' => 443,
				'remote_addr' => array('127.0.0.1')
			)
		)
	)
);