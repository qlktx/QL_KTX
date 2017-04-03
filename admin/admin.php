<?php

include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/admin/chao.tpl');

$xtpl->parse('main');
$xtpl->out('main');
?>