<?php

namespace Application\Model\Table;

use ZendGData\YouTube\VideoEntry;

class YoutubeTable extends AbstractTable
{    
    public function addVideo(VideoEntry $video)
    {
        $data = array(
            'title'  => $video->getVideoTitle(),
            'description'  => $video->getVideoDescription(),
            'url' => $video->getVideoWatchPageUrl(),
            'date' => $video->getRecorded(),
        );
        
        return $this->insert($data);
    }
    
    public function fetchAllLast($limit = 10)
    {
        $select = $this->getSql()->select()
                        ->where(array('moderate' => 1))
                        ->order('date DESC');
        $select->limit($limit)->offset(0);
        
        return $this->selectWith($select);
    }
}