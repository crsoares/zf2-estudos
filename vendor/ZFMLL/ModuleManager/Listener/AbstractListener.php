<?php

namespace ZFMLL\ModuleManager\Listener;

use ZFMLL\ModuleManager\ModuleEvent;
use Zend\ModuleManager\ModuleEvent as BaseModuleEvent;

abstract class AbstractListener implements AuthorizeHandlerInterface
{
	protected $config;

	protected $lazyLoading = array();

	public function __construct($config = null)
	{
		if ($config) {
			$this->setConfig($config);
		}
	}

	public function authorizeModule($module)
	{
		return true;
	}

	public function getConfig()
	{
		return $this->config;
	}

	public function setConfig($config)
	{
		$this->config = $config;
		return $this;
	}
}