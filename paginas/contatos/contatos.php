<header>
    <h3>Pagina de contatos</h3>
</header>
<div>
    <a href="index.php?menuop=cadastro-contato">Novo Contato</a>
</div>
<table border="1">
    <thead>
        <tr>
            <th> ID </th>
            <th> Nome </th>
            <th> Email </th>
            <th> Telefone </th>
            <th> Sexo </th>
            <th> Data Nascimento </th>
        </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM tbcontatos";
    $rs = mysqli_query($conexao, $sql) or die("Erro ao executar consulta!" . mysqli_error($conexao));
    while($dados = mysqli_fetch_assoc($rs)){
    ?>        
        <tr>
            <td> <?=$dados["id"] ?>               </td>
            <td> <?=$dados["nomeContato"] ?>      </td>
            <td> <?=$dados["emailContato"] ?>     </td>
            <td> <?=$dados["telefoneContato"] ?>  </td>
            <td> <?=$dados["sexoContato"] ?>      </td>
            <td> <?=$dados["dataNascData"] ?>     </td>
        </tr>
    <?php
    }
    ?>
    </tbody>
</table>