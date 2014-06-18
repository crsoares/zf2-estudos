<?php

namespace ModuleTest\Application\Controller;

use Zend\Test\PHPUnit\Controller\AbstractConsoleControllerTestCase;

class CrawlControllerTest extends AbstractConsoleControllerTestCase
{    
    public function setUp()
    {
        $this->setApplicationConfig(
            include __DIR__ . '/../../../config/application.config.php'
        );
        parent::setUp();
    }
    
    public function testCrawlTweet()
    {
        // dispatch url
        $this->dispatch('--crawl-tweet');
        
        // basic assertions
        $this->assertResponseStatusCode(0);
        $this->assertActionName('tweet');
        $this->assertControllerName('cron-crawl');
        
        // custom assert
        $sm = $this->getApplicationServiceLocator();
        // ... here my asserts ...
    }
}
