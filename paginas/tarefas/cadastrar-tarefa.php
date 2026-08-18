<header>
    <h3>Cadastrar Tarefa</h3>
</header>
<div>
    <form class="needs-validation" action="index.php?menuop=inserir-tarefa" method="post" novalidate>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6"> 
                    
                    <!-- Titulo Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1"> <i class="bi bi-person"></i> </span>
                        <input type="text" class="form-control" placeholder="Título Tarefa" aria-label="Título Tarefa" name="tituloTarefa" required>
                        <div class="invalid-tooltip"> Campo obrigatóro </div>
                    </div>
                    
                    <!-- Descrição da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-envelope"></i> </span>
                        <input type="text" class="form-control" placeholder="Descrição da Tarefa" aria-label="Descrição da Tarefa" name="descricaoTarefa" required>
                        <div class="invalid-tooltip"> Campo obrigatório! </div>
                    </div>

                     <!-- Data de Conclusão da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="date" class="form-control" placeholder="Data Conclusão" name="dataConclusao">
                    </div>

                    <!-- Hora de Conclusão da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="time" class="form-control" placeholder="Hora Conclusão" name="horaConclusao">
                    </div>
                    
                     <!-- Data de Lembrete da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="date" class="form-control" placeholder="data Conclusão" name="dataLembrete">
                    </div>

                    <!-- Hora de Lembrete da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="time" class="form-control" placeholder="hora Conclusão" name="horaLembrete">
                    </div>
                    
                     <!-- Recorrencia da Tarefa -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">
                            <i class="bi bi-gender-ambiguous"></i>
                        </span>
                        <select name="recorrenciaTarefa" id="recorrenciaTarefa" class="form-select"">
                            <option selected disabled value="">Selecione a recorrência</option>
                            <option value="0"> Não Recorrente </option>
                            <option value="1"> Diariamente </option>
                            <option value="2"> Semanalmente </option>
                            <option value="3"> Mensalmente </option>
                            <option value="4"> Anualmente </option>
                        </select>
                    </div>  
                    <div class="d-grid gap-2">
                        <input class="btn btn-primary" type="submit" value="Adicionar" name="btnAdicionar">
                    <div>
            </div>
        </div>
    </form>
</div>

