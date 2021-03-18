<%@ page import="teamred.bio.model.Prodotti" %>
<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 07/03/2021
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet" type="text/css">
    <link href="https://sorgentenatura.it/assets/css/style.css?_=1610961818" media="screen" rel="stylesheet" type="text/css">

    <style>

        .contenuto {
            height: 1200px;
            font-size: 17px;
        }

        .logo{
            padding-left: 10px;
            float:left;
            margin-right:2%;
            outline: none;
        }

        .home{
            padding:16px;
            border:none;
            background-color: transparent;
            float:left;
            padding-left:2%;
            padding-right:2%;
            font-size: 16px;
            transition-duration: 0.3s;
            padding-bottom:17px;
            color: #48352C;
            font-weight:bold;
            outline:none;
        }

        .home:hover {
            background-color: dodgerblue;
            color:white;
            outline:none;
            border-radius:30px;
        }

        .example input[type=text] {
            padding: 10px 0px 10px 15px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            background: #f1f1f1;
            width:186px;
            border-radius:20px 0px 0px 20px;
            margin-top: 6px;
            outline:none;
        }

        .example button {
            padding: 10px 15px 10px 15px;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            float:right;
            transition-duration: 0.3s;
            background: linear-gradient(to right, dodgerblue, skyblue);
            margin-top: 6px;
            border-radius:0px 20px 20px 0px;
            outline:none;
        }

        .example button:hover {
            background: linear-gradient(to right, deepskyblue, blue);
        }

        .example::after {
            content: "";
            clear: both;
            display: table;
        }

        .imgProdotto{
            background-color:white;
            float:left;
            border:1px solid green;
            width:25%;
            height:400px;
            margin-top:130px;
            margin-left:90px;
            box-shadow: 0 0 10px 5px lightgray;
            border-radius: 10px;
        }

        .dettagliProdotto{
            float:left;
            width:35%;
            height:400px;
            margin-top:130px;
            margin-left:55px;
        }

        .prezzi{
            background-color:white;
            float:left;
            border:2px solid red;
            width:20%;
            height:300px;
            margin-top:130px;
            margin-left:60px;
            border-radius: 10px;
        }

        .stelle{
            height:40px;
            padding:2px 0px 0px 5px;
        }

        #nomeProdotto{
            padding:5px;
            height:auto;
            font-size:30px;
            line-height:30px;

        }

        #descrizione{
            padding:5px;
            margin-top:10px;
            margin-bottom:5px;
            height:auto;
            font-size:15px;
        }

        .recensioni{
            float:left;
            margin-right:330px;
            color:#e3cc02;
            margin-top:4px;
            width:15%;
        }

        #numRecensioni{
            float:left;
            width:30%;
            margin-left:70px;
            margin-top:-21px;
            color:green;
            font-size:12px;
        }

        #quantit{
            clear:both;
            padding:5px;
            margin-top:2px;
        }

        #ingredienti{
            padding:5px;
            margin-top:10px;
            height:auto;
        }

        #allergeni{
            padding:5px;
            margin-top:10px;
            height:auto;
        }

        #prezzo{
            margin-left:5px;
            padding:8px;
            margin-top:10px;
            font-size:20px;
        }

        #grasso{
            color:red;
            font-size:23px;
        }

        .disponibile{
            margin-left:5px;
            padding:8px;
            margin-top:10px;
        }

        .verde{
            color:green;
        }

        #barra{
            color:gray;
        }

        #inputPulsante{
            margin-top:20px;
            margin-left:16%;
            margin-right:15%;
            background-color:red;
            width:70%;
            height:50px;
            border-radius:10px;
            border:solid red;
            outline:none;
            color:white;
        }

        #imgProdotto{
            margin-top:50px;
            height:240px;
            width: 60%;
            margin-left:75px;
        }

        #punti{
            margin-top:20px;
            margin-left:60px;
        }

        #pulsante{
            margin-top:20px;
        }

        body{
            font-family: Arial,sans-serif!important;
            background-color:white;
        }

        .margini{
            margin-right: 210px;
        }

    </style>

</head>
<body>
<% Prodotti prodotti = (Prodotti) request.getAttribute("Prodotto");%>
<div style=" background: linear-gradient(to bottom, lightskyblue 1%, white ); height:55px; padding:5px; background-image: url('https://i.imgur.com/A5Jizx6.jpeg'); background-repeat: repeat-x;"> <span class="logo"> <a href="/"> <img src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png" style="height:50px "/> </a> </span>
    <div> <a href="/"> <button class="home">HOME</button> </a></div>
    <div> <a href="Prodotti"> <button class="home"> PRODOTTI </button> </a></div>
    <div> <a href="km0"><button class="home">KM 0</button> </a></div>
    <div> <a href="bevande"><button class="home"> BEVANDE </button> </a></div>
    <div> <a href="ProdottiOfferta"><button class="home"> OFFERTE </button></a></div>
    <div style="float:right; whigt:500px">
        <form class="example" action="ricerca" style="float:left;">
            <input type="text" placeholder="Search.." name="nome">
            <button type="submit"><img width="20" src="https://icon-library.com/images/white-magnifying-glass-icon/white-magnifying-glass-icon-11.jpg">
            </button>
        </form>
        <div style="float:right;"><a href="carrello">

            <button type="submit" class="home" type="submit" style="padding:12px;
          padding-bottom:12px; margin:0px;" style="padding:10px; padding-bottom:11px; borders:0px;">
                <img width="30" src="https://image.flaticon.com/icons/png/512/263/263142.png"></button>
        </a></div>
    </div>
</div>

<div class="contenuto" style="background-image: url('https://i.imgur.com/LdgYkpl.jpg'); background-repeat: no-repeat; background-position: bottom left;">
    <div class="imgProdotto">
        <div >
            <img id="imgProdotto" src="<%=prodotti.getImmagine()%>" alt="prodotto">
        </div>
    </div>

    <div class="dettagliProdotto">
        <div id="nomeProdotto"> <b><%=prodotti.getNomeProdotto()%></b> </div>
        <div id="descrizione"><%=prodotti.getDescrizioneProdotto()%> </div>
        <div class="stelle">
            <div class="recensioni"> &#9733&#9733&#9733&#9733&#9734 </div>
            <div id="numRecensioni"> &nbsp; su 15 recensioni</div>
        </div>
        <div id="quantit"> <b>Disponibilità: </b><%=prodotti.getQuantitaProdotto()%> pezzi </div>
        <div id="ingredienti"> <b>Ingredienti: </b><%=prodotti.getIngredienti()%> </div>
        <div id="allergeni"> <b><%if(prodotti.getAllergeni()!=null){%>
            <%="Allergeni:"%></b><%=prodotti.getAllergeni()%>
        <%}%></div>
    </div>

    <div class="prezzi">
        <div id="prezzo"> Prezzo: &nbsp <s id="barra">   <%if(prodotti.getPrezzoScontato()!=null){%>
            <%="€"%>
            <%=prodotti.getPrezzoProdotto()%>
            <%}%>
        </s> <b id="grasso"> &nbsp &euro; <%if(prodotti.getPrezzoScontato()!=null){%>
        <%=prodotti.getPrezzoScontato()%>
            <%} else {%>
            <%=prodotti.getPrezzoProdotto()%>
            <%}%>
        </b></div>
        <div class="disponibile"> Disponibilità <b class="verde"> immediata </b> </div>
        <form action="aggiuntoalcarrello" method="get" id="pulsante">
            <input type="hidden" value="<%=prodotti.getIDProdotto()%>" name="id" />
                <label style="margin-left:12px;" for="quantita"> Quantità: </label>
                <input type="number" id="quantita" value="1" name="quantita" min="1" max="5">
                <input id="inputPulsante" type="submit" value="&#128722; Aggiungi al carrello">
        </form>
        <div id="punti"> Guadagni <i class="verde">1Punto</i><b class="verde">Bio &#10086;</b></div>
    </div>
</div>

<div style="clear:both; color: white; text-align: left; height:150px; background-color: #abada6; padding: 10px 10px 10px 30px;">
    <div class="margini" style="float:left; width:33%; margin-top:50px;">
        &#169; Tutti i diritti riservati. Team Red S.r.l. - Via Generation, 27 - Bari(BA)
    </div>
    <div class="margini" style="float:left; width:20%; text-align: center; margin-top:27px;">
        <div> Gaetano Di Rocco - Casalnuovo di Napoli (NA) </div>
        <div> Pierfrancesco Di Tommaso - Adelfia (BA)</div>
        <div> Simone Giunta - Foggia (FG) </div>
        <div> Giulia Mazzarella - Galatina (LE) </div>
    </div>
</div>

</body>
</html>






