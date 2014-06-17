<?php

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Application\Form\Form;
use Zend\Mail\Message;
use Zend\Mail\Transport\Smtp;
use Zend\Paginator;

class IndexController extends AbstractACtionController
{
	public function indexAction()
	{
		$sm = $this->getServiceLocator();
		return array(
			'tweets' => $sm->get('TweetModel')->fetchAllLastValid(25),
			'tutofr' => $sm->get('TutorielModel')->fetchAllLastValidByLang('fr', 3),
			'tutoen' => $sm->get('TutorielModel')->fetchAllLastValidByLang('en', 3)
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

	public function registerdeveloperAction()
	{
		$form = new Form\Developpeur();
		$request = $this->getRequest();
		if($request->isPost()) {
			$formData = $request->getPost();
			$form->setData($formData);
			if($form->isValid()) {
				$formData = $form->getData();
				$sm = $this->getServiceLocator();
				$sm->get('DeveloperModel')->register($formData);
				$this->plugin('flashmessenger')->addValidMessage("Registro Mercipour \ 's, é geralmente tida em conta em 48 horas.");
				return $this->plugin('redirect')->toRoute('register-developer');
			}
			$this->flashMessenger()->addErrorMessage('Obrigado a corrigir erros de forma.');
		}
		return array('form' => $form);
	}
}