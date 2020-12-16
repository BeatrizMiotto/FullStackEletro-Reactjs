<?php
    $servename = "localhost";
    $username = "root";
    $password = "";
    $database = "fseletro";

    $tabela = $_GET['table'];

    $conn = mysqli_connect ($servename, $username, $password, $database);

    if(!$conn){
        die("A conexão ao Banco de dados falhou: " . mysqli_connect_error());
    }

    $sql = "select * from $tabela";
    $result = $conn->query($sql);

    
    print_r(json_encode ($result->fetch_all(MYSQLI_ASSOC)));           

    mysqli_close($conn);
?>
<?php
header("Access-Control-Allow-Origin:*"); // Permite que outras aplicações consumam a api  
header("Content-type: application/json"); //Indicação de arquivo JSON 
?>