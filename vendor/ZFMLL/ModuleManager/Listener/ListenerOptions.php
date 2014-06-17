<?php

namespace ZFMLL\ModuleManager\Listener;

use Zend\ModuleManager\Listener\ListenerOptions as BaseListener;

class ListenerOptions extends BaseListender
{
	protected $lazyLoading = array();

	public function getLazyLoading()
	{
		return $this->lazyLoading;
	}

	public function setLazyLoading(array $lazyLoading)
	{
		$this->lazyLoading = $lazyLoading;
		return $this;
	}
}