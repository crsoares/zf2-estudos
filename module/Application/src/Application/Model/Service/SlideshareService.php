<?php

namespace Application\Model\Service;

use Zend\Service\SlideShare\SlideShow;

class SlideshareService extends AbstractService
{
    /*
     * Add a tweet object
     */
    public function addSlideshow(SlideShow $slideShow)
    {   
        $sm = $this->getServiceLocator();
        $row = $sm->get('SlideshareModel')->fetchRow(array('url' => $slideShow->getLocation()));
        if($row) {
            return false;
        }
        
        $row = $sm->get('LanguageModel')->fetchRow(array('code' => $slideShow->getLanguage()));
        if(!$row) {
            return false;
        }
        $lang = $row->id;
        
        $date = new \DateTime($slideShow->getCreated());
        $data = array(
            'title'  => $slideShow->getTitle(),
            'description'  => $slideShow->getDescription(),
            'url' => $slideShow->getLocation(),
            'thumbnail' => $slideShow->getThumbnailSmallUrl(),
            'date' => $date->format('Y-m-d H:i:s'),
            'language' => $lang,
            'moderate' => 1,
        );
        return $sm->get('SlideshareModel')->insert($data);
    }
}