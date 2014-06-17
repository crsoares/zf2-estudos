<?php

namespace Application;

use Application\Model\Table;
use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
use Zend\ModuleManager\Feature\ServiceProviderInterface;
use Zend\ModuleManager\Feature\ConfigProviderInterface;
use Zend\Db\Adapter\Adapter as DbAdapter;
use Zend\Mail\Transport\SmtpOptions;

class Module implements AutoloaderProviderInterface,
ServiceProviderInterface,
ConfigProviderInterface
{
	public function getServiceConfig()
	{
		return array(
			'invokables' => array(
				'TweetService' => 'Application\Model\Service\TweetService'
			),
			'factories' => array(
				'SmtpOptions' => function ($sm) {
					$config = $sm->get('config');
					return new SmtpOptions($config['smtp_options']);
				},
				'DbAdapter' => function ($sm) {
					$config = $sm->get('config');
					$config = $config['db'];
					$dbAdapter = new DbAdapter($config);
					return $dbAdapter;
				},
				'TweetTable' => function ($sm) {
					return new Table\TweetTable('tweet', $sm->get('DbAdapter'));
				}
			),
			'aliases' => array(
				'TweetModel' => 'TweetTable',
			)
		);
	}
}