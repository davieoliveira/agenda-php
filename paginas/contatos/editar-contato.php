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
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">

                    <!-- ID do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon0"> <i class="bi bi-key-fill"></i> </span>
                        <input type="text" class="form-control" placeholder="ID" aria-label="ID" name="idContato" value="<?=$dados["idContato"]?>" readonly>
                    </div>

                    <!-- Nome do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1"> <i class="bi bi-person"></i> </span>
                        <input type="text" class="form-control" placeholder="Nome" aria-label="Nome" name="nomeContato" value="<?=$dados["nomeContato"]?>">
                    </div>

                    <!-- Email do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-envelope"></i> </span>
                        <input type="email" class="form-control" placeholder="E-mail" aria-label="Email" name="emailContato" value="<?=$dados["emailContato"]?>">
                    </div>

                    <!-- Telefone do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon3"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="text" class="form-control" placeholder="Telefone" aria-label="Telefone" name="telefoneContato" value="<?=$dados["telefoneContato"]?>">
                    </div>

                    <!-- Endereço do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon4"> <i class="bi bi-geo-alt-fill"></i> </span>
                        <input type="text" class="form-control" placeholder="Endereço" aria-label="Endereço" name="enderecoContato" value="<?=$dados["enderecoContato"]?>">
                    </div>

                    <!-- Data de Nascimento do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon5"> <i class="bi bi-calendar2-date"></i> </span>
                        <input type="date" class="form-control" aria-label="Data de Nascimento" name="dataNascContato" id="dataNascContato" value="<?= !empty($dados['dataNascContato']) ? date('Y-m-d', strtotime(str_replace('/', '-', $dados['dataNascContato']))) : '' ?>">
                    </div>

                    <!-- Sexo do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon6"> <i class="bi bi-gender-ambiguous"></i> </span>
                        <select class="form-select" name="sexoContato" aria-label="Gênero">
                            <option value="" disabled <?= empty($dados['sexoContato']) ? 'selected' : '' ?>>Selecione o gênero</option>
                            <option value="M" <?= ($dados['sexoContato'] == 'M' || $dados['sexoContato'] == 'Masculino') ? 'selected' : '' ?>>Masculino</option>
                            <option value="F" <?= ($dados['sexoContato'] == 'F' || $dados['sexoContato'] == 'Feminino') ? 'selected' : '' ?>>Feminino</option>
                        </select>
                    </div>

                    <!-- Botão de Atualizar -->
                    <div class="d-grid gap-2">
                        <input class="btn btn-warning" type="submit" value="Atualizar" name="btnAtualizar">
                    </div>
            </div>
        </div>
    </form>
</div>