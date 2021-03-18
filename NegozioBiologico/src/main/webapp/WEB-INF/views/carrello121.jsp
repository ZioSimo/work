<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 08/03/2021
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% List<Carrello> carrello = (List<Carrello>) request.getAttribute("listaCarrello");
double prezzoTotale= 0.0;
    for (Carrello c: carrello)
    {
%>

<div>
    <%= c.getProdotto().getNomeProdotto()%> </div>
<div><%if(c.getProdotto().getPrezzoScontato()!=null) {%>
    prezzo <%=c.getProdotto().getPrezzoScontato()*c.getQuantita()%>
    <%prezzoTotale+=c.getProdotto().getPrezzoScontato()*c.getQuantita();%>
    <%} else { %>
     <%=c.getProdotto().getPrezzoProdotto()*c.getQuantita() %>
    <%prezzoTotale+=c.getProdotto().getPrezzoProdotto()*c.getQuantita();%>
    <% }%>
    quantità <%=c.getQuantita()%>
    <form action="modificacarrello" method="get">
        <input type="hidden" value="<%=c.getIDProdotto()%>" name="id" />
        <label for="quantita">modifica (between 1 and 5):</label>
        <input type="number" id="quantita" name="quantita" min="1" max="5">
        <input type="submit" value="Modifica Quantità">
    </form>

    <form action="delete" method="get">
    <button type="submit" name="IDProdotto" value="<%=c.getIDProdotto()%>">Rimuovi</button>
    </form>
</div>
<%
    }

%>

<div> Prezzo Totale: <%=prezzoTotale%>  </div>

<form action="deleteall" method="get">
<button type="submit" name="" value="">Svuota Carrello</button>
</form>

</body>
</html>
