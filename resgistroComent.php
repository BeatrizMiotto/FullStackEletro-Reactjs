<?php
    require 'comentarios.php';

    $comentarios = new Comentarios;
    $comentarios->nome = $_POST['nome'];
    $comentarios->msg = $_POST['msg'];

    
?>