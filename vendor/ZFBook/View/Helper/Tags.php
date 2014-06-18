<?php

namespace ZFBook\View\Helper;

use Zend\View\Helper\AbstractHelper;

class Tags extends AbstractHelper
{
    public function __invoke($tags)
    {
        $display = "";
        $tags = preg_split("#,#", $tags);
        foreach($tags as $tag)
        {
            $tag = trim($tag);
            if($tag)
            {
                if($display)
                {
                    $display .= ', ';
                }
                $display .= '<a href="/search?tag='.urlencode($tag).'">'.$tag.'</a>';
            }
        }
        
        return $display;
    }
}