<?php if(count($errors) > 0): ?>
<?php foreach($errors as $error):?>
<p class="alert alert-danger">
    <?php print $error;?>
</p>
<?php endforeach;?>
<?php endif;?>