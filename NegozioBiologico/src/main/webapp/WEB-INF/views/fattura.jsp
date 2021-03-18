<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10/03/2021
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>JS Bin</title>
</head>
<style>

    .contenitore {
        height: auto;
        padding: 35px 35px 0px 35px;
        font-size: 17px;
    }

    .logo {
        float: left;
        width: 17%;
        height: 50px;
        padding-left: 15px;
    }

    .ragSociale {
        float: right;
        width: 50%;
        height: 60px;
        text-align: right;
        padding: 9px 15px 9px 9px;
        margin-top: 30px;
    }

    .Totale {
        float: right;
        margin-right: 30px;
        width: 30%;
        height: 100px;
        font-size: 30px;
        padding: 22px 0px 0px 10px;
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
        margin-top: 80px;
        color: #7B7B7B;
        font-size: 23px;
    }

    #Prodotti {
        margin-top: 10px;
        border-collapse: collapse;
        width: 60%;
        margin-bottom: 60px;
    }

    #Prodotti td, #Prodotti th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #Prodotti tr:nth-child(even) {
        background-color: #f2f2f2;
    }


    #Prodotti th {
        padding-top: 12px;
        padding-bottom: 12px;
        padding-left: 7px;
        text-align: left;
        background-color: lightgray;
        color: black;
    }

    #PrimaRiga {
        width: 30px;
    }

    #SecondaRiga {
        width: 70px;
    }

    #ragSociale {
        margin-top: -1px;
        font-size: 17px;
        color: gray;
    }

    #hr {
        margin-top: 150px;
    }

    #Nb {
        float: left;
    }

    @media print {
        .noprint {
            display: none;
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

    <p id="Ordine"> Numero Ordine: <%
        int ordine = 0;
        String numeroOrdine = "";
        for (int i = 0; i < 8; i++) {
            ordine = (int) (Math.random() * 10);
            numeroOrdine += ordine;

        }
    %>
        <%=numeroOrdine%>
    </p>

    <br><br>


    <table id="Prodotti">
        <tr>
            <th id="PrimaRiga">Codice</th>
            <th>Descrizione</th>
            <th id="SecondaRiga">Quantità</th>
            <th id="PrimaRiga">Sconto</th>
            <th id="SecondaRiga">Prezzo</th>
        </tr>


        <tr>
            <% List<Carrello> carrello = (List<Carrello>) request.getAttribute("listaCarrello");
                double prezzoTotale = 0.0;
                for (Carrello c : carrello) {
            %>

            <td><%=c.getIDProdotto()%>
            </td>
            <td><%=c.getProdotto().getNomeProdotto()%>
            </td>
            <td><%=c.getQuantita()%>
            </td>
            <td><%if (c.getProdotto().getSconto() != null) {%>
                <%=c.getProdotto().getSconto()%>
                <%} else { %>
                -
                <% }%>


            </td>
            <td><% if (c.getProdotto().getPrezzoScontato() != null) {%>
                <%=c.getProdotto().getPrezzoScontato() * c.getQuantita()%>
                <%prezzoTotale += c.getProdotto().getPrezzoScontato() * c.getQuantita();%>
                <%} else { %>
                <%=c.getProdotto().getPrezzoProdotto() * c.getQuantita() %>
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
        Totale: <%="€"%><%=prezzoTotale%>
    </div>

    <div style="clear: both;"></div>

    <form action="svuota" class="noprint">
        <button type="submit" onclick="print()"> Stampa </button>
    </form>

</div>

</body>
</html>
