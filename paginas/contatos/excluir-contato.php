<header>
    <h3> Excluir Contato </h3>
</header>
<?php
    $idContato =mysqli_real_escape_string($conexao, $GET["idContato"]);
    $sql = "DELETE FROM tbContatos WHERE idContato='{$idContato}'";
    mysqli_query($conexao, $sql) or die("Erro ao excluir o registro. " . mysqli_error($conexao));
    echo "Registro excluido com sucesso!";
?>