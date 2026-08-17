<?php 
    $txt_pesquisa = (isset($_POST["txt_pesquisa"]))?$_POST["txt_pesquisa"]:"";
?>
<h3>Página de Tarefas</h3>
<div class="d-flex align-items-center justify-content-center position-relative my-4">
    <form class="input-group" style="max-width: 350px;" action="index.php?menuop=tarefas" method="post"> 
        <input class="form-control me-2" type="text" name="txt_pesquisa" placeholder="Buscar Tarefa...">
        <input class="btn btn-outline-secondary" type="submit" value="Pesquisar"> 
    </form>

    <div class="position-absolute end-0">
        <a class="btn btn-primary" href="index.php?menuop=cadastro-tarefa">
            <i class="bi bi-person-fill-add"></i> Nova Tarefa
        </a>
    </div>
</div>

<table  class="table table-dark table-striped">
    <thead>
        <tr>
            <th> Status </th>
            <th> Título </th>
            <th> Descrição </th>
            <th> Data da Conclusão </th>
            <th> Hora da Conclusão </th>
            <th> Edição </th>
            <th> Excluir </th>
        </tr>
    </thead>
    <tbody>
    <?php

    $sql = "SELECT
            idTarefa,
            statusTarefa,
            tituloTarefa,
            descricaoTarefa,
            DATE_FORMAT(dataConclusao, '%d/%m/%Y') AS dataConclusao,
            horaConclusao
            FROM tbtarefas
            WHERE
            tituloTarefa LIKE '%{$txt_pesquisa}%' OR
            descricaoTarefa LIKE '%{$txt_pesquisa}%' OR
            DATE_FORMAT(dataConclusao, '%d/%m/%Y') LIKE '%{$txt_pesquisa}%'
            ORDER BY statusTarefa ,dataConclusao
            ";

    $rs = mysqli_query($conexao, $sql) or die("Erro ao executar consulta!" . mysqli_error($conexao));
    while($dados = mysqli_fetch_assoc($rs)){
    ?>        
        <tr>
            <td> 
                <a class="btn btn-secondary btn-sm" href="index.php?menuop=concluir-tarefa&idTarefa=<?=$dados["idTarefa"]?>">    
                    <?php
                        if($dados['statusTarefa'] == 0){
                            echo '<i class="bi bi-square"></i>';
                        } else {
                            echo '<i class="bi bi-check-square"></i>';  
                        }
                    ?>
                </a>
            </td>
            <td> <?=$dados["tituloTarefa"] ?>  </td>
            <td> <?=$dados["descricaoTarefa"] ?>  </td>
            <td> <?=$dados["dataConclusao"] ?>  </td>
            <td> <?=$dados["horaConclusao"] ?>  </td>
            <td> <a class="btn btn-warning" href="index.php?menuop=editar-tarefa&idTarefa=<?=$dados["idTarefa"] ?>"> <i class="bi bi-pencil-square"></i> </a> </td>
            <td> <a class="btn btn-danger" href="index.php?menuop=excluir-tarefa&idTarefa=<?=$dados["idTarefa"] ?>"> <i class="bi bi-trash3"> </i> </a> </td>
        </tr>
    <?php
    }
    ?>
    </tbody>
</table>
<br>
