<?php
$idTarefa = $_GET["idTarefa"];
$sql = "SELECT * from tbTarefas WHERE idTarefa = {$idTarefa}";
$rs = mysqli_query($conexao, $sql) or die("erro ao recuperar dados da consulta. " . mysqli_error($conexao));
$dados = mysqli_fetch_assoc($rs);
?>

<header>
    <h3> Editar Tarefa </h3>
</header>

<div>
    <form action="index.php?menuop=atualizar-tarefa" method="post">

        <div class="container">
            <div class="row justify-content-center">
                <input type="hidden" name="idTarefa" value="<?=$idTarefa?>">
                
                <div class="col-md-6">
                    <!-- Titulo Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1"> <i class="bi bi-person"></i> </span>
                        <input type="text" class="form-control" placeholder="Título Tarefa" aria-label="Título Tarefa" name="tituloTarefa" value="<?=$dados["tituloTarefa"]?>">
                        <div class="invalid-tooltip"> Campo obrigatóro </div>
                    </div>
                    
                    <!-- Descrição da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-envelope"></i> </span>
                        <input type="text" class="form-control" placeholder="Descrição da Tarefa" aria-label="Descrição da Tarefa" name="descricaoTarefa" value="<?=$dados["descricaoTarefa"]?>">
                        <div class="invalid-tooltip"> Campo obrigatório! </div>
                    </div>

                     <!-- Data de Conclusão da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="date" class="form-control" placeholder="Data Conclusão" name="dataConclusao" value="<?=$dados["dataConclusao"]?>">
                    </div>

                    <!-- Hora de Conclusão da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="time" class="form-control" placeholder="Hora Conclusão" name="horaConclusao" value="<?=$dados["horaConclusao"]?>">
                    </div>
                    
                     <!-- Data de Lembrete da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="date" class="form-control" placeholder="data Conclusão" name="dataLembrete" value="<?=$dados["dataLembrete"]?>">
                    </div>

                    <!-- Hora de Lembrete da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="time" class="form-control" placeholder="hora Conclusão" name="horaLembrete" value="<?=$dados["horaLembrete"]?>">
                    </div>
                    
                     <!-- Recorrencia da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">
                            <i class="bi bi-gender-ambiguous"></i>
                        </span>
                        <select name="recorrenciaTarefa" id="recorrenciaTarefa" class="form-select"">
                            <option value="" disabled <?= empty($dados['recorrenciaTarefa']) ? 'selected' : '' ?>>Selecione a recorrencia</option>
                            <option value="0"> Não Recorrente </option>
                            <option value="1"> Diariamente </option>
                            <option value="2"> Semanalmente </option>
                            <option value="3"> Mensalmente </option>
                            <option value="4"> Anualmente </option>
                        </select>
                    </div>  
                    <div class="d-grid gap-2">
                        <input class="btn btn-warning" type="submit" value="Atualizar" name="btnAdicionar">
                    <div>
            </div>
        </div>
    </form>
</div>