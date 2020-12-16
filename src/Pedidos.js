import React from 'react';
import './style.css';

function registroPedidos(event){
    let formData = new FormData(event.target);
    const url = "http://fullstackeletro/getContent.php?table=pedidos";
    fetch(url, {
        method: "POST",
        body: formData
    }).then((response)=> response.json())
}

function Pedidos(){
    return(
        <div>
            <header>
                <h2>Pedidos</h2>
                <hr/>
            </header>
            <form class="form-group" onSubmit={registroPedidos}>
                <label for="nome">Nome:</label>
                <input class="form-control" type="text" id="nome" name="cliente" placeholder="Nome completo"/>
                <label for="end">Endereço:</label>
                <input class="form-control" id="end" type="text" name="endereco" placeholder="Rua/Avenida"/>
                <label for="n_casa">Nº:</label>
                <input class="form-control" id="n_casa" type="text" name="n_casa" placeholder="0"/>
                <label for="tele">Telefone:</label>
                <input class="form-control" id="tele" type="tel" name="telefone" placeholder="Ex 0000-0000"/>
                <label for="email">E-mail:</label>
                <input class="form-control" id="email" type="text" name="email" placeholder="ex@exemplo.com"/>
                <label for="produ">Nome do Produto:</label>
                <input class="form-control" id="produ" type="text" name="produto" placeholder="Produto"/>
                <label for="pre">Preço:</label>
                <input class="form-control" id="pre" type="text" name="preco" placeholder="00,00"/>
                <label for="quant">Quantidade:</label>
                <input class="form-control" id="quant" type="number" name="quantidade" placeholder="0"/>
                <label for="pretot">Preço Total:</label>
                <input class="form-control" id="pretot" type="text" name="precototal" placeholder="000,00"/><br/>
                <button  value="Enviar">Enviar</button>
        </form>
        </div>
    );
};
export default Pedidos;
