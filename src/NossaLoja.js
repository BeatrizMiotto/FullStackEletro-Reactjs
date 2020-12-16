import React from 'react';
import './style.css';


function NossaLoja(){
    return(
        <div>
            <header>
                <h2>Nossas Lojas</h2>
                <hr/>
            </header>
            <table class="container">
            <tr class="card-group">
                <td class="card">
                    <h3>Rio de Janeiro</h3>
                    <p>Av. Presidente Vargas, 5000</p>
                    <p>10 &ordm; andar</p>
                    <p>Centro</p>
                    <p>(21) 3333-3333</p>
                </td>

                <td class="card">
                    <h3>São Paulo</h3>
                    <p>Av. Paulista, 985</p>
                    <p>3 &ordm; andar</p>
                    <p>jardins</p>
                    <p>(11) 4444-4444</p>
                </td>

                <td class="card">
                    <h3>Santa Catarina</h3>
                    <p>Rua Major &Aacute;vila, 370</p>
                    <p>10 &ordm; andar</p>
                    <p>Vila Mariana</p>
                    <p>(47) 5555-5555</p>
                </td>
            </tr>

        </table>
        </div>
    );
};
export default NossaLoja;