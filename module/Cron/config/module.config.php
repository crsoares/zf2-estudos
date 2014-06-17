<?php

return array(
	'cron_options' => array(
		'twitter_options' => array(
			'queries' => array(
				'#zf2', 'zend framework 2', '#zendframework2'
			),
			'languages' => array(
				'fr', 'en',
			)
		)
	),
	'controllers' => array(
		'invokables' => array(
			'cron-crawl' => 'Cron\Controller\CrawlController',
			'cron-publish' => 'Cron\Controller\PublishController',
		)
	),
	'console' => array(
		'router' => array(
			'routes' => array(
				'crawl-tweet' => array(
					'type' => 'simple',
					'options' => array(
						'route' => '--crawl-tweet',
						'defaults' => array(
							'contoller' => 'cron-crawl',
							'action' => 'tweet'
						)
					)
				)
			)
		)
	)
);