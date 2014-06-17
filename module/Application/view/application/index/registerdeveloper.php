<div class="row">
	<div class="span7">
		<h2>Adicionar perfil de desenvolvedor Zend Framework</h2>
		<a class="btn" href="<?php echo $this->url('developer'); ?>">Lista dos desenvolvedores</a>
		<br /><br />
		<?php echo $this->messages(array('valid', 'error')); ?>
		<?php 
			$form = $this->form;
			$form->prepare();
			$form->setAttribute('action', $this->url());
			$form->setAttribute('method', 'post');
			echo $this->openTag($form);
		?>
		<dl class="zend_form">
			<?php echo $this->formRow($form->get('web_identity')->get('name')); ?>
			<?php echo $this->formRow($form->get('web_identity')->get('firstname')); ?>
			<?php echo $this->formRow($form->get('web_identity')->get('email')); ?>
			<?php echo $this->formRow($form->get('php_knowledge')->get('php5certifiation')); ?>
			<?php echo $this->formRow($form->get('php_knowledge')->get('php53certification')); ?>
			<?php echo $this->formRow($form->get('php_knowledge')->('zf1certification')); ?>
			<?php echo $this->formRow($form->get('social_links')->get('twitterlink')); ?>
			<?php echo $this->formRow($form->get('social_links')->get('viadeolink')); ?>
			<?php echo $this->formRow($form->get('social_links')->get('linkedinlink')); ?>
			<?php echo $this->formRow($form->get('add')); ?>
		</dl>
		<?php $this->form()->closeTag(); ?>
	</div>
	<?php echo $this->render('bloc/book'); ?>
</div>