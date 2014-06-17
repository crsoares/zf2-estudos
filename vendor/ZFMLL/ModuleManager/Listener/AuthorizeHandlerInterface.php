<?php

namespace ZFMLL\ModuleManager\Listener;

interface AuthorizeHandlerInterface
{
	public function authorizeModule($module);
}