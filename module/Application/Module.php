<?php

namespace Application;

use Application\Model\Table;
use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
use Zend\ModuleManager\Feature\ServiceProviderInterface;
use Zend\ModuleManager\Feature\ConfigProviderInterface;
use Zend\Db\Adapter\Adapter as DbAdapter;
use Zend\Db\TableGateway\Feature;
use Zend\Mail\Transport\SmtpOptions;

class Module implements AutoloaderProviderInterface, ServiceProviderInterface,
        ConfigProviderInterface
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
    
    public function getServiceConfig()
    {
        return array(
            'invokables' => array(
                'TweetService' => 'Application\Model\Service\TweetService',
                'SlideshareService' => 'Application\Model\Service\SlideshareService',
            ),
            'factories' => array(
                'SmtpOptions' => function($sm) {
                        $config = $sm->get('config');
                        return new SmtpOptions($config['smtp_options']);
                },
                'DbAdapter' => function($sm) {
                    $config = $sm->get('config');
                    $config = $config['db'];
                    $dbAdapter = new DbAdapter($config);
                    return $dbAdapter;
                },
                'TweetTable' => function($sm) {
                    return new Table\TweetTable('tweet', $sm->get('DbAdapter'), array(
                        new Feature\EventFeature(new \Zend\EventManager\EventManager())
                    ));
                },
                'TutorielTable' => function($sm) {
                    return new Table\TutorielTable('tutoriel', $sm->get('DbAdapter'));
                },
                'YoutubeTable' => function($sm) {
                    return new Table\YoutubeTable('youtube', $sm->get('DbAdapter'));
                },
                'SlideshareTable' => function($sm) {
                    return new Table\SlideshareTable('slideshare', $sm->get('DbAdapter'));
                },
                'LanguageTable' => function($sm) {
                    return new Table\LanguageTable('language', $sm->get('DbAdapter'));
                },
                'FacebookTable' => function($sm) {
                    return new Table\FacebookTable('facebook', $sm->get('DbAdapter'));
                },
                'DeveloperTable' => function($sm) {
                    return new Table\DeveloperTable('developer', $sm->get('DbAdapter'));
                },
            ),
            'aliases' => array(
                'TweetModel' => 'TweetTable',
                'TutorielModel' => 'TutorielTable',
                'YoutubeModel' => 'YoutubeTable',
                'SlideshareModel' => 'SlideshareTable',
                'LanguageModel' => 'LanguageTable',
                'FacebookModel' => 'FacebookTable',
                'DeveloperModel' => 'DeveloperTable',
            ),
        );
    }
}
