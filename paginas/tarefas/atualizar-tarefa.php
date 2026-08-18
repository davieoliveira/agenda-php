<header>
    <h3>Atualizar Tarefa<h3>
</header>

<?php
    $idTarefa = mysqli_real_escape_string($conexao, $_POST["idTarefa"]);
    $tituloTarefa = mysqli_real_escape_string($conexao, $_POST["tituloTarefa"]);
    $descricaoTarefa = mysqli_real_escape_string($conexao, $_POST["descricaoTarefa"]);
    $dataConclusao = mysqli_real_escape_string($conexao, $_POST["dataConclusao"]);
    $horaConclusao = mysqli_real_escape_string($conexao, $_POST["horaConclusao"]);
    $dataLembrete = mysqli_real_escape_string($conexao, $_POST["dataLembrete"]);
    $horaLembrete = mysqli_real_escape_string($conexao, $_POST["horaLembrete"]);
    $recorrenciaTarefa = mysqli_real_escape_string($conexao, $_POST["recorrenciaTarefa"]);
    $sql = "UPDATE tbTarefas tbTarefas SET
            tituloTarefa =    '{$tituloTarefa}',
            dataConclusao = '{$dataConclusao}',
            horaConclusao = '{$horaConclusao}',
            dataLembrete =     '{$dataLembrete}',
            horaLembrete = '{$horaLembrete}',
            recorrenciaTarefa = '{$recorrenciaTarefa}'
            WHERE idTarefa = '{$idTarefa}'
        ";
        mysqli_query($conexao, $sql) or die("erro ao executar a consulta. " . mysqli_error($conexao));
        echo "O contato foi atualizado com sucesso!";
    ?>