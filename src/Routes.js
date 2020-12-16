import React from 'react';
import {BrowserRouter, Switch, Route} from 'react-router-dom';
import Inicial from './Inicial';
import Produtos from './Produtos';
import Pedidos from './Pedidos';
import Contatos from './Contatos';
import NossaLoja from './NossaLoja';
import Navegar from './Navegar';


function Routes(){
    return(
        <BrowserRouter>
        <header>
            <Navegar/>
        </header>
            <Switch>
                <Route path="/Inicial" exact component={Inicial}/>
                <Route path="/Produtos" component={Produtos}/>
                <Route path="/Pedidos" component={Pedidos}/>
                <Route path="/Contatos" component={Contatos}/>
                <Route path="/Nossaloja" component={NossaLoja}/>
            </Switch>

        </BrowserRouter>
    );
};
export default Routes;

        