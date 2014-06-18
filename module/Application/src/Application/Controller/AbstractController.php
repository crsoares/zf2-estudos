<?php

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Mvc\MvcEvent;
use Zend\Stdlib\ResponseInterface as Response;
use Zend\Stdlib\RequestInterface as Request;
use Zend\Navigation\Page\Mvc as PageMvc;
use Zend\View\Model\ViewModel;
use Zend\Registry;

class AbstractController extends AbstractActionController
{
    const ERROR_FLASH_MESSENGER = 'error_flash_messages';
    const VALID_FLASH_MESSENGER= 'valid_flash_messages';
    const DEFAULT_FLASH_MESSENGER = 'default_flash_messages';
    
    protected $currentPage = null;
    
    /**
     * Dispatch action
     * @param Request $request
     * @param Response $response
     * @return type 
     */
    public function dispatch(Request $request, Response $response = null)
    {   
        // attach a post dispatch event
        $this->getEventManager()->attach(MvcEvent::EVENT_DISPATCH, array($this, 'postDispatch'), -100);
        return parent::dispatch($request, $response);
    }
    
    /**
     * Post dispatch action
     * @param MvcEvent $e 
     */
    public function postDispatch(MvcEvent $e)
    {   
        // get home and add current route if exist in config
        $navigation = $this->getServiceLocator()->get('DefaultNavigation');
        $home = $navigation->findOneBy('route', 'home');
        $routeMatch = $e->getRouteMatch();
        $current = $navigation->findOneBy('route', $routeMatch->getMatchedRouteName());
        if($current && $current!= $home) {
            $current->setActive(true);
            $home->addPage($current); 
        }
        
        // inject messages
        $result = $e->getResult();
        if($result instanceof ViewModel) {
            $vars = is_array($result->getVariables()) ? $result->getVariables() : array();
            $result->setVariables(array_merge(
                    array(
                        self::ERROR_FLASH_MESSENGER => $this->plugin('flashmessenger')->getErrorMessages(),
                        self::VALID_FLASH_MESSENGER => $this->plugin('flashmessenger')->getValidMessages(),
                        self::DEFAULT_FLASH_MESSENGER => $this->plugin('flashmessenger')->getDefaultMessages(),
                    ),
                    $vars
                )
            );
        }
    }
}
