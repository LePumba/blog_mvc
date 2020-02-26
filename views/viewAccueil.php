<?php
foreach ($articles as $article)://TODO: erreur dans la connexion à la base de données il me semble... ('models/Model.php') |function getAll()|
?>
<h2>
    <?= $article->title()?>
</h2>
<?php endforeach;?>