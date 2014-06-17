<?php

namespace Cron\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Http\Client;
use ZendService\SlideShare;
use ZendService\Twitter;
use ZendGData\YouTube;

class CrawlController extends AbstractActionController
{
	public function tweetAction()
	{
		$sm = $this->getServiceLocator();
		$twitterOptions = $sm->get('CronModuleOptions')->getTwitterOptions();
		$queries = $twitterOptions->getQueries();
		$langs = $twitterOptions->getLanguages();
		$results_type = array('recent', 'popular');

		$list = 0;
		foreach ($langs as $lang) {
			foreach ($queries as $query) {
				foreach ($results_type as $result_type) {
					$search = new Twitter\Search();
					$search->setOptions(new Twitter\SearchOptions(array(
						'rpp' => 25,
						'include_entities' => true,
						'result_type' => $result_type,
						'lang' => $lang
					)));
					$results = $search->execute($query);

					foreach ($results['results'] as $result) {
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

		$slideshare = new SlideShare\SlideShare('myapikey', 'sharedsecret');
		$slideshare->setCacheObject(new \ZFBook\Cache\Storage\Adapter\BlackHole());
		$slideShows = $slideshare->searchSlideShows('Zend Framework');

		foreach ($slideShows  as $slideShow) {
			$listSlideshow += (integer)$sm->get('SlideshareService')->addSlideShow($slideShow);
		}

		$youtube = new YouTube();
		$query = $youtube->newVideoQuery();
		$query->videoQuery = 'Zend Framework';
		$query->startIndex = 0;
		$query->maxResults = 50;
		$query->orderBy = 'viewCount';
		$videoFeed = $youtube->getVideoFeed($query);

		foreach ($videoFeed as $videoEntity) {
			$lastVideo += (integer)$sm->get('YoutubeModel')->addVideo($videoEntity);
		}

		return $listSlideshow . ' ajoutés slideshow et ' . $lastVideo . ' vídeo acrescentado.';
	}
}
