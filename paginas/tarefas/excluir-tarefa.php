<header>
    <h3> Excluir Tarefa </h3>
</header>
<?php
    $idTarefa =mysqli_real_escape_string($conexao, $_GET["idTarefa"]);
    $sql = "DELETE FROM tbTarefas WHERE idTarefa='{$idTarefa}'";
    mysqli_query($conexao, $sql) or die("Erro ao excluir o registro. " . mysqli_error($conexao));
    echo "Registro excluido com sucesso!";
?>