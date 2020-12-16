<?php

require 'index.php';

class Pedido
{
  public $id;
  public $name;
  public $endereco;
  public $n_casa;
  public $telefone;
  public $email;
  public $produto;
  public $preco;
  public $quantidade;
  public $precototal;
  


  public static function getAllRequests()
  {
    $connection = Connection::getDB();

    $stmt = $connection->query('SELECT * FROM pedidos');

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
  public  function Pedidos(){
    $connection = connection::getDb();

    $stmt = $connection->query("INSERT INTO pedidos(nome,endereco,n_casa,telefone, email, produto, preco, quantidade, precototal) values('$this->nome', '$this->endereco', '$this->n_casa', '$this->telefone', '$this->email', '$this->produto', '$this->preco', '$this->quantidade', '$this->precototal')");
}
?>
  