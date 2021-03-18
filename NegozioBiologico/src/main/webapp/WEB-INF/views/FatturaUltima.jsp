<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: giuli
  Date: 12/03/2021
  Time: 08:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Ricevuta</title>
</head>
<style>

    .contenitore {
        height: auto;
        font-size: 17px;
    }

    .logo {
        float: left;
        width: 20%;
        height: 50px;
        padding-left: 30px;
    }

    .ragSociale {
        float: right;
        width: 50%;
        height: 60px;
        text-align: right;
        padding: 9px 30px 9px 9px;
        margin-top: 30px;
    }

    .Totale {
        float: right;
        margin: 90px 0px 20px 0px;
        width: 30%;
        height: 60px;
        font-size: 35px;
        padding: 25px 0px 0px 25px;
        background-color: #828282;
        color: white;
        text-align: center;
    }

    body {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 13px;
    }

    #logo {
        width: 80%;
        height: 60px;
        margin-top: 30px;
    }

    #Ordine {
        margin-top: 90px;
        text-align: center;
        color: white;
        background-color: #828282;
        width: 600px;
        height: 30px;
        padding: 40px 15px 40px 0px;
        margin-bottom: 90px;
        text-transform: uppercase;
        font-size: 35px;
    }

    #Prodotti {
        margin-top: 10px;
        border-collapse: collapse;
        width: 100%;
        margin-bottom: 60px;
    }

    #Prodotti td, #Prodotti th {
        border: 1px solid #ddd;
        padding: 25px;
    }

    #Prodotti tr:nth-child(even) {
        background-color: #f2f2f2;
    }


    #Prodotti th {
        padding-top: 30px;
        padding-bottom: 12px;
        text-align: left;
        background-color: lightgray;
        color: black;

    }

    #PrimaRiga {
        width: 50px;
    }

    #SecondaRiga {
        width: 200px;
        margin-right: 30px;
    }

    #terzaRiga{
        width:80px;
    }

    #ragSociale {
        margin-top: -1px;
        font-size: 17px;
        color: gray;
    }

    #hr {
        margin-top: 150px;
    }

    #Numero {
        color: white;
        font-size: 35px;
    }

    #Nb {
        margin-top: 90px;
        float: left;
        background-color: lightgray;
        width: 800px;
        padding-left: 20px;
    }

    #stampa{
        margin-left: 10px;
        background-color: lightgray;
        border-radius: 7px;
        color: white;
        border: gray;
        height:60px;
        width:150px;
        font-size: 20px;
    }

    #stampa:hover{
        background-color: gray;
    }

    @media print {
        .noprint {
            display: none;
        }

        #Ordine {
            margin-bottom: 10px;
            padding-bottom: 0px;
            padding-top: 0px;
        }

        #Nb{
            margin-top: 10px;
        }

        .Totale{
            margin-top: 10px;
        }
    }

</style>
<body>
<div class="contenitore">
    <div class="logo">
        <img id="logo" src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png" alt="logo">
    </div>

    <div class="ragSociale">
        <p id="ragSociale">
            <b>TeamRed S.r.l.</b>
            <br>
            Via Generation, 27 - Bari(BA)
            <br>
            P.IVA IT12345678912 - C.F. 12345678912
        </p>
    </div>

    <hr id="hr" style="clear:both">

    <div id="Ordine">
        <div id="NumOrdine">
            <b> Numero Ordine: </b>
            <b id="Numero">

                <% int ordine = 0;
                    String numeroOrdine = "";
                    for (int i = 0; i < 8; i++) {
                        ordine = (int) (Math.random() * 10);
                        numeroOrdine += ordine;

                    } %>

                <%=numeroOrdine%>
            </b>
        </div>
    </div>

    <br><br>


    <table id="Prodotti">

        <tr>

            <th id="PrimaRiga">Codice</th>
            <th id="SecondaRiga">Descrizione</th>
            <th id="terzaRiga">Quantità</th>
            <th id="PrimaRiga">Sconto</th>
            <th id="terzaRiga">Prezzo</th>

        </tr>

        <tr>
            <% List<Carrello> carrello = (List<Carrello>) request.getAttribute("listaCarrello");
                double prezzoTotale = 0.0;
                for (Carrello c : carrello) {
            %>
            <td> <%=c.getIDProdotto()%> </td>
            <td> <%=c.getProdotto().getNomeProdotto()%> </td>
            <td> <%=c.getQuantita()%> </td>
            <td>
                <%if (c.getProdotto().getSconto() != null) {%>
                <%=c.getProdotto().getSconto()%>
                <%} else { %>
                -
                <% }%>
            </td>
            <td>
                <% if (c.getProdotto().getPrezzoScontato() != null) {%>
                € <script>document.write(parseFloat(<%=c.getProdotto().getPrezzoScontato() * c.getQuantita()%>).toFixed(2));</script>
                <%prezzoTotale += c.getProdotto().getPrezzoScontato() * c.getQuantita();%>
                <%} else { %>
                € <script>document.write(parseFloat(<%=c.getProdotto().getPrezzoProdotto() * c.getQuantita()%>).toFixed(2));</script>
                <%prezzoTotale += c.getProdotto().getPrezzoProdotto() * c.getQuantita();%>
                <% }%>
            </td>

        </tr>
        <% }%>
    </table>

    <div id="Nb">
        <p> * N.B. <br> Stampa questa pagina e presentala al punto vendita per il ritiro e il pagamento dei tuoi
            prodotti! </p>
    </div>

    <div class="Totale">
        <b>Totale: <%="€"%> <script>document.write(parseFloat(<%=prezzoTotale%>).toFixed(2));</script> </b>
    </div>

    <div style="clear: both;"></div>

    <form action="svuota" class="noprint" >
        <button type="submit" onclick="print()" id="stampa"> Stampa </button>
    </form>

</div>

</body>
</html>