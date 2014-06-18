<?php

namespace Application\Controller;

use Zend\View\Model\ViewModel;
use Application\Form\Form;
use Zend\Mail\Message;
use Zend\Mail\Transport\Smtp;
use Zend\Paginator;

class IndexController extends AbstractController
{    
    public function indexAction()
    {	        
        $sm = $this->getServiceLocator();
        return array(
            'tweets' => $sm->get('TweetModel')->fetchAllLastValid(25),
            'tutofr' => $sm->get('TutorielModel')->fetchAllLastValidByLang('fr',3),
            'tutoen' => $sm->get('TutorielModel')->fetchAllLastValidByLang('en',3),
        );
    }
    
    public function tweetAction()
    {   
        $page = $this->getRequest()->getQuery()->get('page', 1);
        $numByPage = 25;
        
        $sm = $this->getServiceLocator();
        $tweets = $sm->get('TweetModel')->getQueryLastValid();
        
        $paginator = new Paginator\Paginator(new Paginator\Adapter\DbSelect($tweets, $sm->get('DbAdapter')));
        $paginator->setItemCountPerPage($numByPage);
        $paginator->setCurrentPageNumber($page);
        $paginator->setPageRange(5);
        
        return array('tweets' => $paginator);
    }
    
    public function tutorielAction()
    {   
        $sm = $this->getServiceLocator();
        return array(
            'tutofr' => $sm->get('TutorielModel')->fetchAllLastValidByLang('fr', 5),
            'tutoen' => $sm->get('TutorielModel')->fetchAllLastValidByLang('en', 5),
        );
    }
    
    public function tutorielfrAction()
    {   
        $page = $this->getRequest()->getQuery()->get('page', 1);
        $numByPage = 5;
        
        $sm = $this->getServiceLocator();
        $tutos = $sm->get('TutorielModel')->getQueryAllLastValidByLang('fr', $numByPage, $page);
        
        $paginator = new Paginator\Paginator(new Paginator\Adapter\DbSelect($tutos, $sm->get('DbAdapter')));
        $paginator->setItemCountPerPage($numByPage);
        $paginator->setCurrentPageNumber($page);
        $paginator->setPageRange(5);
        
        return array('tutos' => $paginator);
    }
    
    public function tutorielenAction()
    {   
        $page = $this->getRequest()->getQuery()->get('page', 1);
        $numByPage = 5;
        
        $sm = $this->getServiceLocator();
        $tutos = $sm->get('TutorielModel')->getQueryAllLastValidByLang('en', $numByPage, $page);
        
        $paginator = new Paginator\Paginator(new Paginator\Adapter\DbSelect($tutos, $sm->get('DbAdapter')));
        $paginator->setItemCountPerPage($numByPage);
        $paginator->setCurrentPageNumber($page);
        $paginator->setPageRange(5);
        
        return array('tutos' => $paginator);
    }
    
    public function bookAction()
    {}
    
    public function socialAction()
    {
        $sm = $this->getServiceLocator();
        return array(
            'slideshare' => $sm->get('SlideshareModel')->fetchAllLastValid('all', 5),
            'facebook' => $sm->get("FacebookModel")->fetchAllLast(8),
            'youtube' => $sm->get("YoutubeModel")->fetchAllLast(5),
       );
    }
    
    public function developerAction()
    {
        $page = $this->getRequest()->getQuery()->get('page', 1);
        $numByPage = 10;
        
        $sm = $this->getServiceLocator();
        $devs = $sm->get('DeveloperModel')->getQueryAllValid();
        
        $paginator = new Paginator\Paginator(new Paginator\Adapter\DbSelect($devs, $sm->get('DbAdapter')));
        $paginator->setItemCountPerPage($numByPage);
        $paginator->setCurrentPageNumber($page);
        $paginator->setPageRange(5);
        
        return array('developer' => $paginator);
    }
    
    public function registerdeveloperAction()
    {
        $form = new Form\Developpeur();
        
        $request = $this->getRequest();
        if ($request->isPost()) {
            $formData = $request->getPost();
            $form->setData($formData);
            if ($form->isValid()) {
               $formData = $form->getData();
               $sm = $this->getServiceLocator();
               $sm->get('DeveloperModel')->register($formData);
               // use action helper with plugin method
               $this->plugin('flashmessenger')->addValidMessage('Merci pour l\'inscription, celle-ci est généralement prise en compte sous 48h.');
               return $this->plugin('redirect')->toRoute('register-developer');
            }
            // use action helper like method
            $this->flashMessenger()->addErrorMessage('Merci de corriger les erreurs du formulaire.');
        }
        
        return array('form' => $form);
    }
    
    public function contactAction()
    {
        $form = new Form\Contact();
        
        $request = $this->getRequest();
        if ($request->isPost()) {
            $formData = $request->getPost();
            $form->setData($formData);
            if ($form->isValid()) {
               $formData = $form->getData();
               $message = new Message();
               $message->addTo('blanchon.vincent@gmail.com');
               $message->setFrom($formData['web_identity']['email']);
               $message->setSubject($formData['simple_message']['subject']);
               $message->setBody($formData['simple_message']['message']);
               try {
                   $email = new Smtp($this->getServiceLocator()->get('SmtpOptions'));
                   $email->send($message);
               } catch(\RuntimeException $e) {
                    $this->plugin('flashmessenger')->addErrorMessage("Le formulaire est actuellement indisponible, merci d'utiliser l'adresse email contact@zend-framework-2.fr.");
                    return $this->plugin('redirect')->toRoute('contact');
               }
               
               $this->plugin('flashmessenger')->addValidMessage('Merci pour email, une réponse est envoyée sous généralement sous 24h.');
               return $this->plugin('redirect')->toRoute('contact');
            } else {
                $form->setData($formData);
                $this->plugin('flashmessenger')->addErrorMessage('Merci de remplir tous les champs du formulaire.');
            }
        }
        
        return array('form' => $form);
    }
    
    public function sitemapAction()
    {
        $this->getResponse()->getHeaders()->addHeaderLine('Content-Type: application/xml');
        
        $viewModel = new ViewModel();
        $viewModel->setTerminal(true);
        
        return $viewModel;
    }
}
