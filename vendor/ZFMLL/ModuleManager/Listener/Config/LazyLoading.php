<?php

namespace ZFMLL\ModuleManager\Listener\Config;

class LazyLoading
{
	protected $listeners = array();

	public function __construct($options = null)
	{
		if (null !== $options) {
			$this->setFromArray($options);
		}
	}

	public function setFromArray($options) 
	{
		if (!is_array($options) && !$options instanceOf Traversable) {
			throw new Exception\InvalidArgumentException(sprintf(
				'Parâmetro fornecido para %s deve ser um array ou Traversable',
				__METHOD__
			));
		}

		foreach ($options as $moduleName => $value) {
			$moduleName = strtolower($moduleName);
			if(!isset($this->listeners[$moduleName])) {
				$this->listeners[$moduleName] = array();
			}
			$this->listeners[$moduleName] = array_merge($this->listeners[$moduleName], $value);
		}
	}

	public function getListenersModule($moduleName)
	{
		$moduleName = strtolower($moduleName);
		if(!isset($this->listeners[$moduleName])) {
			return array();
		}

		return $this->listeners[$moduleName];
	}
}