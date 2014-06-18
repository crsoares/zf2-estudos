<?php

namespace Application\Model\Table;

use Zend\Db\Sql\Predicate\Like;

class TutorielTable extends AbstractTable
{
    public function fetchAllLanguage()
    {
        $select = $this->getSql()->select()
                        ->columns(array('id','url','title','description','img','tags'))
                        ->join('language','language.id = tutoriel.language',array('code'))
                        ->where(array('moderate'=>2));
        
        return $this->selectWith($select);
    }
    
    public function fetchAllFilterByIdAndLang($ids, $lang, $limit)
    {
        $select = $this->getSql()->select()
                        ->columns(array('url','title','description','img','tags','date'))
                        ->join('language','language.id = tutoriel.language')
                        ->where(array('moderate'=>2))
                        ->where(array('language.code'=>$lang))
                        ->where(array('tutoriel.id IN ?',$ids))
                        ->order('date DESC');
        
        $select->limit($limit)->offset($limit*(max($page,1)-1));
        
        return $this->selectWith($select);
    }
    
    public function getQueryAllLastValidByLang($lang='fr', $limit=10, $page=1)
    {
        $select = $this->getSql()->select()
                        ->columns(array('url','title','description','img','tags','date'))
                        ->join('language','language.id = tutoriel.language')
                        ->where(array('moderate'=>2))
                        ->where(array('language.code'=>$lang))
                        ->order('date DESC');
        $select->limit($limit)->offset(0);
        
        return $select;
    }
    
    public function fetchAllLastValidByLang($lang='fr', $limit=10, $page=1)
    {
        $select = $this->getQueryAllLastValidByLang($lang, $limit, $page);
        return $this->selectWith($select);
    }
    
    public function fetchAllFilterByTagAndLang($search, $lang='fr', $limit=10)
    {
        $select = $this->getSql()->select()
                        ->columns(array('url','title','description','img','tags','date'))
                        ->join('language','language.id = tutoriel.language')
                        ->where(array('moderate'=>2))
                        ->where(array('language.code'=>$lang))
                        ->where(new Like('tutoriel.tags','%'.$search.'%'))
                        ->order('date DESC');
        $select->limit($limit)->offset(0);
        
        return $this->selectWith($select);
    }
    
    public function fetchAllFilterBySearchAndLang($search,$lang='fr', $limit=10)
    {
        $select = $this->getSql()->select()
                        ->columns(array('url','title','description','img','tags','date'))
                        ->join('language','language.id = tutoriel.language')
                        ->where(array('moderate'=>2))
                        ->where(array('language.code'=>$lang))
                        ->where(new Like('description','%'.$search.'%'))
                        ->order('date DESC');
        $select->limit($limit)->offset(0);
        
        return $this->selectWith($select);
    }
}