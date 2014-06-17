<?php

return array(
	'router' => include 'routes.config.php',
	'service_manager' => array(
		'factories' => array(
			'DefaultNavigation' => 'Zend\Navigation\Service\DefaultNavigationFactory'
		)
	),
	'controllers' => array(
		'invokables' => array(
			'application-index' => 'Application\Controller\IndexController',
		)
	),
	'controller_plugins' => array(
		'invokables' => array(
			'flashmessenger' => 'ZFBook\Mvc\Controller\Plugin\FlashMessenger'
		)
	),
	'view_helpers' => array(
		'invokables' => array(
			'tags' => 'ZFBook\View\Helper\Tags',
			'messages' => 'ZFBook\View\Helper\FlashMessenger',
			'userTwitter' => 'ZFBook\View\Helper\UserTwitter'
		)
	)
);