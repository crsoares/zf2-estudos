<?php

namespace Cron;

use Zend\ModuleManager\ModuleManager;
use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
use Zend\ModuleManager\Feature\ConfigProviderInterface;
use Zend\ModuleManager\Feature\ConsoleUsageProviderInterface;
use Zend\ModuleManager\Feature\ServiceProviderInterface;
use Zend\Console\Adapter\AdapterInterface;

class Module implements AutoloaderProviderInterface, ConfigProviderInterface,
        ConsoleUsageProviderInterface, ServiceProviderInterface
{
    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php',
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
    
    public function getConsoleUsage(AdapterInterface $console)
    {
        return array(
            'Use --crawl-tweet to get new tweets about zend framework.',
            'Use --crawl-social to get new slideshows and videos about zend framework.',
            'Use --publish-tweet to publish new tweets about zend framework.',
        );
    }
    
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'CronModuleOptions' => function($sm) {
                    $config = $sm->get('Config');
                    return new Options\ModuleOptions($config['cron_options']);
                },
            ),
        );
    }
}
