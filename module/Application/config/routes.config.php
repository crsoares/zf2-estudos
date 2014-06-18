<?php
return array(
    'routes' => array(
        'home' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'index',
                ),
            ),
        ),
        'tweet' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/tweet-zend-framework-2',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'tweet',
                ),
            ),
        ),
        'tutoriel' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/tutoriel-zend-framework-2',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'tutoriel',
                ),
            ),
        ),
        'tutorielfr' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/tutoriel-zend-framework-2/francais',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'tutorielfr',
                ),
            ),
        ),
        'tutorielen' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/tutoriel-zend-framework-2/anglais',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'tutorielen',
                ),
            ),
        ),
        'book' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/livre-zend-framework-2',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'book',
                ),
            ),
        ),
        'contact' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/contact',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'contact',
                ),
            ),
        ),
        'social' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/zend-framework-2-sur-les-reseaux-sociaux',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'social',
                ),
            ),
        ),
        'developer' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/developpeur-zend-framework-2',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'developer',
                ),
            ),
        ),
        'register-developer' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/developpeur-zend-framework-2/ajouter-mon-profil',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'registerdeveloper',
                ),
            ),
        ),
        'sitemap' => array(
            'type' => 'literal',
            'options' => array(
                'route'    => '/sitemap.xml',
                'defaults' => array(
                    'controller' => 'application-index',
                    'action'     => 'sitemap',
                ),
            ),
        ),
    ),
);
