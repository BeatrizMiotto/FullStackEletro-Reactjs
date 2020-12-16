<?php 
require "index.php";

class Comentarios
{
    public $id;
    public $name;
    public $msg;

    public static function getAll()
    {
        $conection = Connection::getdb(); 

        $stmt = $conection->query('SELECT * FROM  comentarios');
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }  
    public  function Coment(){
        $connection = connection::getDb();

        $stmt = $connection->query("INSERT INTO comentarios(nome,msg) values('$this->nome', '$this->msg')");
    }
} 
?>