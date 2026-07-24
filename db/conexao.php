<?php
include("config.php");
$conexao = mysqli_connect(SERVIDOR, USUARIO, SENHA, BANCO) or die("ERRO na conexão com o servidor!" .mysqli_connect_error());
