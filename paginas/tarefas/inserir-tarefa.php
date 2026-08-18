<header>
    <h3>Inserir Tarefas<h3>
</header>

<?php
    $tituloTarefa = mysqli_real_escape_string($conexao, $_POST["tituloTarefa"]);
    $descricaoTarefa = mysqli_real_escape_string($conexao, $_POST["descricaoTarefa"]);
    $dataConclusao = mysqli_real_escape_string($conexao, $_POST["dataConclusao"]);
    $horaConclusao = mysqli_real_escape_string($conexao, $_POST["horaConclusao"]);
    $dataLembrete = mysqli_real_escape_string($conexao, $_POST["dataLembrete"]);
    $horaLembrete = mysqli_real_escape_string($conexao, $_POST["horaLembrete"]);
    $recorrenciaTarefa = mysqli_real_escape_string($conexao, $_POST["recorrenciaTarefa"]);
    $sql = "INSERT INTO tbtarefas(
            tituloTarefa,
            descricaoTarefa,
            dataConclusao,
            horaConclusao,
            dataLembrete,
            horaLembrete,
            recorrenciaTarefa,
            statusTarefa)
            VALUES(
                '{$tituloTarefa}',
                '{$descricaoTarefa}',
                '{$dataConclusao}',
                '{$horaConclusao}',
                '{$dataLembrete}',
                '{$horaLembrete}',
                '{$recorrenciaTarefa}',
                0)
        ";
        mysqli_query($conexao, $sql) or die("erro ao executar a consulta. " . mysqli_error($conexao));
        echo "o registro foi adicionado!";
    ?>