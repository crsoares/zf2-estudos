<?php

namespace ZFBook\Mvc\Controller\Plugin;

use Zend\Mvc\Controller\Plugin\FlashMessenger as BaseFlashMessenger;

class FlashMessenger extends BaseFlashMessenger
{
    /**
     * @var string 
     */
    protected $namespaceError = 'error_message';
    
    /**
     * @var string 
     */
    protected $namespaceValid = 'valid_message';
    
    /**
     * Add a message in the error namespace
     * @param type $message 
     */
    public function addErrorMessage($message)
    {
        $namespace = $this->getNamespace();
        $this->namespace = $this->namespaceError;
        parent::addMessage($message);
        $this->namespace = $namespace;
        
        return $this;
    }
    
    /**
     * Add a message in the valid namespace
     * @param type $message 
     */
    public function addValidMessage($message)
    {
        $namespace = $this->getNamespace();
        $this->namespace = $this->namespaceValid;
        parent::addMessage($message);
        $this->namespace = $namespace;
        
        return $this;
    }
    
    /**
     * Get valid messages from a specific namespace
     *
     * @return array
     */
    public function getErrorMessages($clean=true)
    {
        $namespace = $this->getNamespace();
        $this->namespace = $this->namespaceError;
        
        $messages = $this->getCurrentMessages();
        if($clean) {
            $this->clearCurrentMessages();
        }
        $this->namespace = $namespace;
        
        return $messages;
    }
    
    /**
     * Get valid messages from a specific namespace
     *
     * @return array
     */
    public function getValidMessages($clean=true)
    {
        $namespace = $this->getNamespace();
        $this->namespace = $this->namespaceValid;
        
        $messages = $this->getCurrentMessages();
        if($clean) {
            $this->clearCurrentMessages();
        }
        $this->namespace = $namespace;
        
        return $messages;
    }
    
    /**
     * Get valid messages from a specific namespace
     *
     * @return array
     */
    public function getDefaultMessages($clean=true)
    {
        $messages = $this->getCurrentMessages();
        if($clean) {
            $this->clearCurrentMessages();
        }
        
        return $messages;
    }
}
