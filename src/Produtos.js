import React from 'react'; 
import './style.css';

const Dados = () => {
    const [produtos, setProdutos] = React.useState([]);

    React.useEffect(async () =>{
        const url = "http://fullstackeletro/getContent.php?table=produtos";
        const response = await fetch(url);
        setProdutos(await response.json()); 
    }, [])
    return(
    <div class="divprodu, produtos">
            {produtos.map((element)=>{
                return(
                    <div class="boxprodu" key={element.id}>
                    <img class="imgprodu" src={element.imagens}/>
                    <p>
                        {element.descricao}
                    </p>
                    <hr/>
                    <p>
                        <strike>
                            {element.preco}
                        </strike>
                    </p>
                    <p class="p2">
                        {element.precofinal}
                    </p>
                    </div>
                )
            })}
        </div>
    )
}



function Produtos(){
    return(
        <div>
            <header>
                <h2>Produtos</h2>
                <hr/>
            </header>
            <section class="categorias">
                <ul class="list-group-sm">
                    <li class="list-group-item" id="li">Categorias</li>
                    <li class="list-group-item">Todos (12)</li>
                    <li class="list-group-item">Geladeiras (3)</li>
                    <li class="list-group-item" >Fogões (2)</li>
                    <li class="list-group-item" >Microondas(3)</li>
                    <li class="list-group-item" >Lavadoura de Roupas(2)</li>
                    <li class="list-group-item" >Lava-Louças(2)</li>
                </ul>            
            </section>
            <section>
                
                <div>
                <Dados></Dados>
                </div>

            </section>
           
        </div>
    );
};
            
export default Produtos;

