<?php

namespace ZFMLL\ModuleManager\Listener;

use ZFMLL\ModuleManager\ModuleEvent;

class AuthManager
{
	protected $listenerManager;

	protected $lazyLoading;

	public function __construct($lazyLoading = null)
	{
		if ($lazyLoading) {
			$this->setLazyLoading($lazyLoading);
		}
	}

	public function authorize(ModuleEvent $e)
	{
		$moduleName = $e->getModuleName();
		$moduleName = strtolower($moduleName);
		$listeners = $this->getLazyLoading()->getListenersModule($moduleName);
		foreach($listeners as $listener => $value) {
			$listenerObject = $this->load($listener);
			$listenerObject->setConfig($value);
			if(!$listenerObject->authorizeModule($moduleName)) {
				return false;
			}
		}
		return true;
	}

	public function load($listenerName, array $options = null)
	{
		return $this->getListenerManager()->get($listenerName, $options);
	}

	public function setListenerManager($manager)
	{
		if (is_string($manager)) {
			if (!class_exists($manager)) {
				throw new Exception\InvalidArgumentException(sprintf(
					'Inválido classe corretor auxiliar fornecida (%s)',
					$manager
				));
			}
			$manager = new $manager();
		}
		if (!$manager instanceOf ListenerManager) {
			throw new Exception\InvalidArgumentException(sprintf(
				'Corretor Listener deve estender ZFMLL\ModuleManager\Listener\ListenerManager; tem tipo "%s" em vez',
				(is_object($manager) ? get_class($manager) : gettype($manager))
			));
		}
		$this->listenerManager = $manager;
	}

	public function getListenerManager() 
	{
		if (null === $this->listenerManager) {
			$this->setListenerManager(new ListenerManager());
		}
		return $this->listenerManager;
	}

	public function getLazyLoading()
	{
		if (null === $this->lazyLoading) {
			$this->setLazyLoading(array());
		}
		return $this->lazyLoading;
 	}

 	public function setLazyLoading($lazyLoading)
 	{
 		if (!$lazyLoading instanceOf Config\LazyLoading) {
 			$this->lazyLoading new Config\LazyLoading($lazyLoading);
 		} else {
 			$this->lazyLoading = $lazyLoading;
 		}
 	}
}