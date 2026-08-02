<?php
$idContato = $_GET["idContato"];
$sql = "SELECT * from tbContatos WHERE idContato = {$idContato}";
$rs = mysqli_query($conexao, $sql) or die("erro ao recuperar dados da consulta. " . mysqli_error($conexao));
$dados = mysqli_fetch_assoc($rs);
?>

<header>
    <h3> Editar Contato </h3>
</header>
<div>
    <form action="index.php?menuop=atualizar-contato" method="post">
        <div>
            <label for="idContato"> Nome</label>
            <input type="text" name="idContato" value="<?=$dados["idContato"]?>">
        </div>
        <div>
            <label for="nomeContato"> Nome</label>
            <input type="text" name="nomeContato" value="<?=$dados["nomeContato"]?>">
        </div>
        <div>
            <label for="emailContato"> Email </label>
            <input type="email" name="emailContato"value="<?=$dados["emailContato"]?>">
        </div>
        <div>
            <label for="telefoneContato"> Telefone </label>
            <input type="text" name="telefoneContato" value="<?=$dados["telefoneContato"]?>">
        </div>
        <div>
            <label for="enderecoContato"> Endereço </label>
            <input type="text" name="enderecoContato" value="<?=$dados["enderecoContato"]?>">
        </div>
        <div>
            <label for="dataNascContato">Data Nascimento</label>
            <input type="date" name="dataNascContato" id="dataNascContato" value="<?= !empty($dados['dataNascContato']) ? date('Y-m-d', strtotime(str_replace('/', '-', $dados['dataNascContato']))) : '' ?>">
        </div>
        <div>
            <label for="sexoContato"> Gênero </label>
            <input type="text" name="sexoContato" value="<?=$dados["sexoContato"]?>">
        </div>
        <input type="submit" value="Atualizar" name="btnAtualizar">
    </form>
</div>