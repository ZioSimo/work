<%@ page import="teamred.bio.model.Prodotti" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Prodotti</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/style.css?_=1610961818" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/style.css?_=1610961818" media="screen" rel="stylesheet"
          type="text/css">

</head>

<style>

    body{
        font-family: Arial,sans-serif!important;
        background-color:white;
    }

    .contenuto{
        height:100%;
        min-height:750px;
        font-size:17px;
    }

    .img-responsive {
        width: 10px;
        height: 10px;
    }

    .category-box {
        width: 170px;
    }

    .category-box-info {
        border-bottom: 2px solid deepskyblue;
    }

    .img-responsive {
        border-radius: 10px 10px 0px 0px;
    }

    .category-box-overlay {
        border-radius: 10px 10px 0px 0px;
        width: 170px;
        outline: none;
    }

    .category-box-overlay:hover {
        border-radius: 10px 10px 0px 0px;
    }

    .logo {
        padding-left: 10px;
        float: left;
        margin-right: 2%;
        outline: none;
    }

    .home {
        padding: 16px;
        border: none;
        background-color: transparent;
        float: left;
        padding-left: 2%;
        padding-right: 2%;
        font-size: 16px;
        transition-duration: 0.3s;
        padding-bottom: 17px;
        color: #48352C;
        font-weight: bold;
        outline: none;
    }

    .home:hover {
        background-color: dodgerblue;
        color: white;
        border-radius: 30px;
        outline: none;
    }


    .example input[type=text] {
        padding: 10px 0px 10px 15px;
        font-size: 17px;
        border: 1px solid grey;
        float: left;
        background: #f1f1f1;
        width: 186px;
        border-radius: 20px 0px 0px 20px;
        margin-top: 6px;
        outline: none;
    }

    .example button {
        padding: 9px 15px 10px 15px;
        color: white;
        font-size: 17px;
        border: 1px solid grey;
        border-left: none;
        float: right;
        transition-duration: 0.3s;
        background: linear-gradient(to right, dodgerblue, skyblue);
        margin-top: 6px;
        border-radius: 0px 20px 20px 0px;
        outline: none;
    }

    .example button:hover {
        background: linear-gradient(to right, deepskyblue, blue);
    }

    .example::after {
        content: "";
        clear: both;
        display: table;
    }

    .example {
        border: 0px
    }

    .row {
        margin-left: 5%
    }

    .category-box img {
        height: 149px;
    }

    #hr {
        border:1px solid deepskyblue;
        background-color: deepskyblue;
        width:1277px;
        margin-right:130px;
        margin-bottom: 20px;
        margin-top: -18px;
    }

    .titolo{
        margin-top:30px;
        text-align:left;
        width:400px;
        height:70px;
        margin-left:108px;
        color: #48352C;
        font-style: italic;
    }

    .margini{
        margin-right: 210px;
    }

    @media screen and (max-width: 1199px) {
        .row {
            width: 100%
        }

        .category-box img {
            height: 203px;
            width: 100%
        }
    }

    @media screen and (max-width: 991px) {
        .row {
            width: 100%
        }

        .category-box img {
            height: 294px;
            width: 100%
        }
    }

    @media screen and (max-width: 767px) {
        .row {
            width: 100%
        }

        .category-box img {
            height: 206px;
            width: 100%
        }
    }

    @media screen and (max-width: 370px) {
        .row {
            width: 100%
        }

        .category-box img {
            height: auto;
            width: 100%
        }
    }

</style>
<head>
<body >
<% List<Prodotti> prodotti = (List<Prodotti>) request.getAttribute("listaProdotti");%>


<div style=" background: linear-gradient(to bottom, lightskyblue 1%, white ); height:55px; padding:5px; background-image: url('https://i.imgur.com/A5Jizx6.jpeg'); background-repeat: repeat-x;"><span
        class="logo"> <a href="/"> <img src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png"
                            style="height:50px "/> </a> </span>
    <div><a href="/">
        <button class="home">HOME</button>
    </a></div>
    <div><a href="Prodotti">
        <button class="home"> PRODOTTI</button>
    </a></div>
    <div><a href="km0">
        <button class="home">KM 0</button>
    </a></div>
    <div><a href="bevande">
        <button class="home"> BEVANDE</button>
    </a></div>
    <div><a href="ProdottiOfferta">
        <button class="home"> OFFERTE</button>
    </a></div>
    <div style="float:right; whigt:500px">
        <div style="float:right; whigt:500px">
            <form class="example" action="ricerca" style="float:left;">
                <input type="text" placeholder="Search.." name="nome">
                <button type="submit"><img width="20" src="https://icon-library.com/images/white-magnifying-glass-icon/white-magnifying-glass-icon-11.jpg">
                </button>
            </form>
            <div style="float:right;"><a href="carrello">
                <button type="submit" class="home" type="submit" style="padding:12px; padding-bottom:12px;" style="padding:10px; padding-bottom:11px;">
                    <img width="30" src="https://image.flaticon.com/icons/png/512/263/263142.png"></button>
            </a></div>
        </div>
    </div>
</div>
<div class="contenuto" style="background-image: url('https://i.imgur.com/LdgYkpl.jpg'); background-repeat: no-repeat; background-position: bottom left;">

            <div class="titolo"> <h1 class="section-title3"> <b> <%=request.getAttribute("titolo")%> </b> </h1> </div>

<hr id="hr">



<div class="row" style="padding:20px; max-width:90%;">
    <% for (Prodotti p : prodotti) {%>
    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
        <div class="category-box">
            <div class="category-box-overlay">
                <a href="dettaglioProdotto?id=<%=p.getIDProdotto()%>">Vedi prodotto &nbsp; <i
                        class="far fa-long-arrow-right" aria-hidden="true"></i></a>
            </div>
            <img src="<%=p.getImmagine()%>" class="img-responsive center-block" alt="Prodotto in offerta">
            <div class="category-box-info" style="height: 120px;">
                <h3><%=p.getNomeProdotto()%>
                </h3>
                <p class="small"><%=p.getQuantitaProdotto()%> Prodotti</p>
            </div>
        </div>

    </div>

    <%}%>
</div>

</div>

<div style="clear:both; color: white; text-align: left; height:150px; background-color: #abada6; padding: 10px 10px 10px 30px;">
    <div class="margini" style="float:left; width:30%; margin-top:50px;">
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

























