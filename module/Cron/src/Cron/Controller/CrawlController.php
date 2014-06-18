<?php

namespace Cron\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Http\Client;
use ZendService\SlideShare;
use ZendService\Twitter;
use ZendGData\YouTube;

class CrawlController extends AbstractActionController
{
    /**
     * Get new tweet about ZF
     */
    public function tweetAction()
    {
    	// get twitter crawled options
        $sm = $this->getServiceLocator();
        $twitterOptions = $sm->get('CronModuleOptions')->getTwitterOptions();
        $queries = $twitterOptions->getQueries();
        $langs = $twitterOptions->getLanguages();
        $results_type = array('recent', 'popular');
        
        $list = 0;
        foreach($langs as $lang) {
            foreach($queries as $query) {
                foreach($results_type as $result_type) {
                    // get search
                    $search = new Twitter\Search();
                    $search->setOptions(new Twitter\SearchOptions(array(
                        'rpp' => 25,
                        'include_entities' => true,
                        'result_type' => $result_type,
                        'lang' => $lang,
                    )));
                    $results = $search->execute($query);

                    // add tweets in db
                    foreach($results['results'] as $result) {   
                        $list += (integer)$sm->get('TweetService')->addTweet($result);
                    }
                }
            }
        }
        
        return $list . ' tweets ajoutés';
    }
    
    public function socialAction()
    { 
        $sm = $this->getServiceLocator();
        $listVideo = 0;
        $listSlideshow = 0;
        
    	// get linkedin slides
        $slideshare = new SlideShare\SlideShare('myapikey', 'sharedsecret');
        $slideshare->setCacheObject(new \ZFBook\Cache\Storage\Adapter\BlackHole());
    	$slideShows = $slideshare->searchSlideShows('zend framework');
    	
    	foreach ($slideShows as $slideShow) {
            $listSlideshow += (integer)$sm->get('SldieshareService')->addSlideShow($slideShow);
        }
        
    	// get youtube webinars
    	$youtube = new YouTube();
        $query = $youtube->newVideoQuery();
        $query->videoQuery = 'zend framework';
        $query->startIndex = 0;
        $query->maxResults = 50;
        $query->orderBy = 'viewCount';
        $videoFeed = $youtube->getVideoFeed($query);

        foreach ($videoFeed as $videoEntry) {
            $listVideo += (integer)$sm->get('YoutubeModel')->addVideo($videoEntry);
        }
        
        return $listSlideshow . ' slideshow ajoutés et ' . $listVideo . ' vidéos ajoutées.';
    }
}
