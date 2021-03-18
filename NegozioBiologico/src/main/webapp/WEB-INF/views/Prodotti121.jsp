<%@ page import="teamred.bio.model.Prodotti" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10/03/2021
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% List<Prodotti> prodotti = (List<Prodotti>) request.getAttribute("listaProdotti");
    for (Prodotti p: prodotti)
    {
%>

<div><a href="dettaglioProdotto?id=<%=p.getIDProdotto()%>">
    <%= p.getNomeProdotto()%> </a></div>
<div><%if(p.getPrezzoScontato()!=null) {%>
    <s><%=p.getPrezzoProdotto()%></s>
    <%=p.getPrezzoScontato()%>
    <%} else { %>
    <%=p.getPrezzoProdotto() %>
    <% }%>
</div>
<%}%>

</body>
</html>
