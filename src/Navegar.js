import {Link} from 'react-router-dom';

function Navegar(){
    return(
    <navegar>
        <ul class="nav">
            <Link to="/Inicial"><img  class="imgmenu" src="./imagens/logo.jpeg" alt="Full Stack Eletro" /></Link>
            <Link class="a" to="/Produtos">Produtos</Link>
            <Link class="a" to="/Pedidos">Pedidos</Link>
            <Link class="a" to="/Contatos">Contatos</Link>
            <Link  class="a" to="/NossaLoja">Nossas Lojas</Link>
        </ul>
    </navegar>
    );
}
    
export default Navegar;
