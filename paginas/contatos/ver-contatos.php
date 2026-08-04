<div class="d-flex align-items-center justify-content-center position-relative my-4">
    <form class="input-group" style="max-width: 350px;" action="index.php?menuop=contatos" method="post"> 
        <input class="form-control me-2" type="text" name="txt_pesquisa" placeholder="Buscar contato...">
        <input class="btn btn-outline-secondary" type="submit" value="Pesquisar"> 
    </form>

    <div class="position-absolute end-0">
        <a class="btn btn-primary" href="index.php?menuop=cadastro-contato">
            <i class="bi bi-person-fill-add"></i> Novo Contato
        </a>
    </div>
</div>

<table  class="table table-dark table-striped">
    <thead>
        <tr>
            <th> ID </th>
            <th> Nome </th>
            <th> Email </th>
            <th> Telefone </th>
            <th> Endereço </th>
            <th> Sexo </th>
            <th> Data Nascimento </th>
            <th> Edição </th>
            <th> Excluir </th>
        </tr>
    </thead>
    <tbody>
    <?php

    $quantidade = 10;
    $pagina = (isset($_GET['pagina']))?(int)$_GET['pagina']:1;

    $inicio = ($quantidade * $pagina) - $quantidade;

    $txt_pesquisa = (isset($_POST["txt_pesquisa"]))?$_POST["txt_pesquisa"]:"";

    $sql = "SELECT  
            idContato,
            upper(nomeContato) AS nomeContato,
            lower(emailContato) AS emailContato,
            telefoneContato,
            upper(enderecoContato) AS enderecoContato,
            CASE 
                WHEN sexoContato = 'F' THEN 'FEMININO'
                WHEN sexoContato = 'M' THEN 'MASCULINO'
            ELSE
                'NÃO ESPECIFICADO'
            END AS sexoContato,
            DATE_FORMAT(dataNascContato, '%d/%m/%Y') AS dataNascContato
            FROM tbcontatos WHERE idContato='{$txt_pesquisa}' or nomeContato
            LIKE '%{$txt_pesquisa}%'
            ORDER BY nomeContato ASC
            LIMIT $inicio, $quantidade
            ";

    $rs = mysqli_query($conexao, $sql) or die("Erro ao executar consulta!" . mysqli_error($conexao));
    while($dados = mysqli_fetch_assoc($rs)){
    ?>        
        <tr>
            <td> <?=$dados["idContato"] ?>        </td>
            <td> <?=$dados["nomeContato"] ?>      </td>
            <td> <?=$dados["emailContato"] ?>     </td>
            <td> <?=$dados["telefoneContato"] ?>  </td>
            <td> <?=$dados["enderecoContato"] ?>  </td>
            <td> <?=$dados["sexoContato"] ?>      </td>
            <td> <?=$dados["dataNascContato"] ?>  </td>
            <td> <a class="btn btn-warning" href="index.php?menuop=editar-contato&idContato=<?=$dados["idContato"] ?>"> <i class="bi bi-pencil-square"></i> </a> </td>
            <td> <a class="btn btn-danger" href="index.php?menuop=excluir-contato&idContato=<?=$dados["idContato"] ?>"> <i class="bi bi-trash3"> </i> </a> </td>
        </tr>
    <?php
    }
    ?>
    </tbody>
</table>
<br>
<div data-bs-theme="dark">
    <ul class="pagination justify-content-center">
    <?php
    $sqlTotal = "SELECT idContato FROM tbcontatos";
    $qrTotal = mysqli_query($conexao, $sqlTotal) or die(mysqli_error($conexao));
    $numTotal = mysqli_num_rows($qrTotal);
    $totalPagina = ceil($numTotal / $quantidade);

    # echo "Total de Contatos: $numTotal";

    echo "<li class=\"page-item\"><a class=\"page-link\" href=\"?menuop=contatos&pagina=1\">Primeira Página</a></li>";

    if ($pagina > 6) {
        ?>
        <li class="page-item"><a class="page-link" href="?menuop=contatos&pagina=<?php echo $pagina - 1; ?>"> << </a></li>
        <?php
    }

    for ($i = 1; $i <= $totalPagina; $i++) {
        if ($i >= ($pagina - 5) && $i <= ($pagina + 5)) {
            if ($i == $pagina) {
                echo "<li class=\"page-item active\"><span class=\"page-link\">$i</span></li>";
            } else {
                echo "<li class=\"page-item\"><a class=\"page-link\" href=\"?menuop=contatos&pagina=$i\">$i</a></li>";
            }
        }
    }

    if ($pagina < ($totalPagina - 5)) {
        ?>
        <li class="page-item"><a class="page-link" href="?menuop=contatos&pagina=<?php echo $pagina + 1; ?>"> >> </a></li>
        <?php
    }

    echo "<li class=\"page-item\"><a class=\"page-link\" href=\"?menuop=contatos&pagina=$totalPagina\">Última Página</a></li>";
    ?>
    </ul>
</div>