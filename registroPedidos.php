<?php
    require 'pedidos.php';

    $pedidos = new Pedidos;
    $pedidos->nome = $_POST['nome'];
    $pedidos->endereco = $_POST['endereco'];
    $pedidos->n_casa = $_POST['n_casa'];
    $pedidos->telefone = $_POST['telefone'];
    $pedidos->email = $_POST['email'];
    $pedidos->produto = $_POST['produto'];
    $pedidos->preco = $_POST['preco'];
    $pedidos->quantidades = $_POST['precototal'];

    echo $comentarios->registroPedidos();
?>