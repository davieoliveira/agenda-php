<header>
    <h3>Cadastro de Contato</h3>
</header>
<div>
    <form class="needs-validation" action="index.php?menuop=inserir-contato" method="post" novalidate>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6"> 
                    <!-- Nome de Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1"> <i class="bi bi-person"></i> </span>
                        <input type="text" class="form-control" placeholder="Nome" aria-label="Username" name="nomeContato" required>
                        <div class="invalid-tooltip">
                             Campo obrigatório!
                        </div>
                    </div>
                    
                    <!-- Email do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-envelope"></i> </span>
                        <input type="email" class="form-control" placeholder="E-mail" aria-label="Email" name="emailContato" required>
                         <div class="invalid-tooltip">
                             Campo obrigatório!
                        </div>
                    </div>

                     <!-- Telefone do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-telephone-fill"></i> </span>
                        <input type="text" class="form-control" placeholder="Telefone" aria-label="Email" name="telefoneContato" required>
                         <div class="invalid-tooltip">
                             Campo obrigatório!
                        </div>
                    </div>
                    
                     <!-- Endereço do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-geo-alt-fill"></i> </span>
                        <input type="text" class="form-control" placeholder="Endereço" aria-label="Email" name="enderecoContato">
                    </div>

                     <!-- Data de Nascimento do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"> <i class="bi bi-calendar2-date"></i> </span>
                        <input type="date" class="form-control" placeholder="Data de Nascimento" aria-label="Email" name="dataNascContato">
                    </div>
                     <!-- Sexo do Contato -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">
                            <i class="bi bi-gender-ambiguous"></i>
                        </span>
                        <select class="form-select" name="sexoContato" aria-label="Gênero">
                            <option selected disabled value="">Selecione o gênero</option>
                            <option value="M">Masculino</option>
                            <option value="F">Feminino</option>
                        </select>
                    </div>  
                    <div class="d-grid gap-2">
                        <input class="btn btn-primary" type="submit" value="Adicionar" name="btnAdicionar">
                    <div>
            </div>
        </div>
    </form>
</div>

