<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.http.server.DelegatingServerHttpResponse" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 09/03/2021
  Time: 15:10
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
        border: 1px solid;
        height: 900px;
        padding-top: 15px;
        padding-left: 30px;
        padding-right: 30px;
    }

    .logo {
        float: left;
        border: 3px dotted blue;
        width: 20%;
        height: 50px
    }

    .ragSociale {
        float: right;
        border: 1px solid;
        width: 50%;
        height: 60px;
    }

    .Totale {
        float: right;
        margin-top: 350px;
        margin-right: 10px;
        border: 1px solid;
        width: 30%;
        height: 100px;
    }

    body {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 13px;
    }

    #Ordine {
        margin-top: 30px;
    }

    #Prodotti {
        margin-top: 10px;
        border-collapse: collapse;
        width: 60%;
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


</style>
<body>
<div class="contenitore">
    <div class="logo">
        LOGO
    </div>

    <div class="ragSociale"> La ragione sociale</div>
    <br><br><br><br><br>
    <hr style="clear:both">

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
            <td><%if(c.getProdotto().getSconto() != null){%>
                    <%=c.getProdotto().getSconto()%>
                <%}
                else { %>
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


    <div class="Totale">
        Totale: <%=prezzoTotale%>
    </div>


</div>

</body>
</html>
