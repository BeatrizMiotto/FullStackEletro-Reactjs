import React from 'react';
import './style.css';

const Comentarios = () => {
    const [comentarios, setComentarios] = React.useState([]);

    React.useEffect(async () =>{
        const url = "http://fullstackeletro/getContent.php?table=comentarios";
        const response = await fetch(url);
        setComentarios(await response.json()); 
    }, [])
    return(
    <div class="coment">
        {comentarios.map((element)=>{
                return(
                    <div key={element.id}>
                    <p>
                        Nome: {element.nome}
                    </p>
                    <p>
                        
                       Mensagem: {element.msg}
                    </p>
                    <p>
                        Data: {element.data}
                    </p>
                    <hr/>
                    </div>
                )
            })}
        </div>
    )
    
}
function registroComent(event){
    let formData = new FormData(event.target);
    const url = "http://fullstackeletro/getContent.php?table=comentarios";
    fetch(url, {
        method: "POST",
        body: formData
    }).then((response)=> response.json())
}


function Contatos(){
    return(
        <div>
            <header>
                <h2>Contatos</h2>
                <hr/>
            </header>
            <section>
                <p><img src="./imagens/email imagem.png" class="img"></img><br/>contato@fullstackeletro.com</p>
                <p><img src="./imagens/whats.png" class="img"></img><br/>(11) 99999-9999</p>
                <p><img src="./imagens/insta.jpg" class="img"></img><br/>@fullstackeletro</p>
            </section>
            
            <form class="form-group" onSubmit={registroComent}>
                <label for="nome">Nome</label>
                <input class="form-control" type="text" id="nome" name="nome"  placeholder="Nome"/>
                <label for="msg">Mensagem:</label>                    
                <input class="form-control" id="msg" type="text" name="msg" placeholder="Escreva sua mensagem"/><br/>
                <button  value="Enviar">Enviar</button>
            </form>
            
            
            <div>
            <Comentarios/>
            </div>
        </div>
    );
};
export default Contatos;