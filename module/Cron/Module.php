<?php

namespace Cron;

use Zend\ModuleManager\ModuleManager;
use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
use Zend\ModuleManager\Feature\ConfigProviderInterface;
use Zend\ModuleManager\Feature\ConsoleUsageProviderInterface;
use Zend\ModuelManager\Feature\ServiceProviderInterface;
use Zend\Console\Adapter\AdapterInterface;

class Module implements AutoloaderProviderInterface, ConfigProviderInterface,
ConsoleUsageProviderInterface, ServiceProviderInterface
{
	public function getConfig()
	{
		return include __DIR__ . '/config/module.config.php';
	}

	public function getAutoloaderConfig()
	{
		return array(
			'Zend\Loader\ClassMapAutoloader' => array(
				__DIR__ . '/autoload_classmap.php',
			),
			'Zend\Loader\StandartAutoloader' => array(
				'namespaces' => array(
					__NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
				)
			) 
		);
	}

	public function getConsoleUsage(AdapterInterface $console)
	{
		return array(
			'Use --crawl-tweet para obter novos tweets sobre Zend Framework.',
			'Use --crawl-social para obter novos slideshows e vídeos sobre Zend Framework.',
			'Use --publish-tweet de publicar novos tweets sobre Zend Framework.'
		);
	}

	public function getServiceConfig()
	{
		return array(
			'factories' => array(
				'CronModuleOptions' => function ($sm) {
					$config = $sm->get('Config');
					return new Options\ModuleOptions($config['cron_options'])
				}
			)
		);
	}
}