<?php

namespace Cron\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use ZendService\Twitter\Twitter;

class PublishController extends AbstractActionController
{    
    public function tweetAction()
    {
    	// get last tweet not published
        $sm = $this->getServiceLocator();
        $tweetFR = $sm->get('TweetModel')->fetchLastToPublished('fr');
        $tweetEN = $sm->get('TweetModel')->fetchLastToPublished('en');
        
        // twitt that
        $twitter = new Twitter();
    	$response = $twitter->status->update('[FR]@'.$tweetFR->user . ':'.$tweetFR->text);
    	$response = $twitter->status->update('[EN]@'.$tweetEN->user . ':'.$tweetEN->text);
    }
}
