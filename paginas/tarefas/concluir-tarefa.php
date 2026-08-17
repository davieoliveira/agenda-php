<?php

$idTarefa = $_GET["idTarefa"];

$sql = "UPDATE tbtarefas
        SET statusTarefa = IF(statusTarefa = 0, 1, 0)
        WHERE idTarefa = {$idTarefa}";

mysqli_query($conexao, $sql) or die("Erro ao alterar status da tarefa: " . mysqli_error($conexao));

header("Location: index.php?menuop=tarefas");
exit;

?>