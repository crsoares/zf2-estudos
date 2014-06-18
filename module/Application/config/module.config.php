<?php
return array(
    'router' => include 'routes.config.php',
    'service_manager' => array(
        'factories' => array(
            'DefaultNavigation' => 'Zend\Navigation\Service\DefaultNavigationFactory',
        ),
    ),
    'controllers' => array(
        'invokables' => array(
            'application-index' => 'Application\Controller\IndexController',
        ),
    ),
    'controller_plugins' => array(
        'invokables' => array(
            'flashmessenger' => 'ZFBook\Mvc\Controller\Plugin\FlashMessenger',
        ),
    ),
    'view_helpers' => array(
        'invokables' => array(
            'tags' => 'ZFBook\View\Helper\Tags',
            'messages' => 'ZFBook\View\Helper\FlashMessenger',
            'userTwitter' => 'ZFBook\View\Helper\UserTwitter',
        ),
    ),
    'view_manager' => array(
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/exception',
        'layout'                   => 'layout/front',
        'template_map' => array(
            'layout/front' => __DIR__ . '/../view/layout/front.phtml',
            'error/404' => __DIR__ . '/../view/error/404.phtml',
            'error/exception' => __DIR__ . '/../view/error/exception.phtml',
            'bloc/breadcrumbs' => __DIR__ . '/../view/bloc/breadcrumbs.phtml',
            'bloc/paginator' => __DIR__ . '/../view/bloc/paginator.phtml',
            'bloc/book' => __DIR__ . '/../view/bloc/book.phtml',
        ),
        'template_path_stack' => array(
            'application' => __DIR__ . '/../view',
        ),
    ),
    'navigation' => array(
        'default' => array(
            'home' => array('type' => 'mvc', 'route' => 'home','active'=>true, 'label' => 'Home'),
            'tweet' => array('type' => 'mvc', 'route' => 'tweet','active'=>false, 'label' => 'Tweet ZF2'),
            'tutoriel' => array('type' => 'mvc', 'route' => 'tutoriel','active'=>false, 'label' => 'Tutoriel ZF2'),
            'tutorielfr' => array('type' => 'mvc', 'route' => 'tutorielfr','active'=>false, 'label' => 'Tutoriel ZF2 français'),
            'tutorielen' => array('type' => 'mvc', 'route' => 'tutorielen','active'=>false, 'label' => 'Tutoriel ZF2 anglais'),
            'book' => array('type' => 'mvc', 'route' => 'book','active'=>false, 'label' => 'Livre ZF2'),
            'developer' => array('type' => 'mvc', 'route' => 'developer','active'=>false, 'label' => 'Développeur Zend Framework'),
            'social' => array('type' => 'mvc', 'route' => 'social','active'=>false, 'label' => 'ZF2 sur les réseaux'),
            'contact' => array('type' => 'mvc', 'route' => 'contact','active'=>false, 'label' => 'Contact'),
        ),
    ),
);
