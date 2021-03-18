<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

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

    <style>

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
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            background: #f1f1f1;
            width: 186px;
            border-radius: 20px 0px 0px 20px;
            margin-top: 6px;
            padding-left: 15px;
            outline: none;
        }

        .example button {
            padding: 10px 15px 10px 15px;
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

        .stretch-card > .card {
            width: 100%;
            min-width: 100%
        }

        .owl-carousel .item img {
            display: block;
            width: 100%;

        }

        .row {
            margin-left: 5%
        }

        .container1 {
            margin-top: 30px;
        }

        .imgProdotto {
            height: 80px;
            width: 80px;
        }

        .imgProdotto-img {
            height: 95%;
            width: 95%;
            margin-left: -30px;
        }

        .category-box img {
            height: 149px;
        }

        .contenuto {
            height: 1200px;
            font-size: 17px;
        }

        .btn {
            margin-right: 3px;
            margin-top: 10px;
            background-color: #94b39c;
            border-radius: 7px;
            color: green;
            border: #94b39c;
        }

        .btn:hover {
            background-color: gray;
        }

        .trash {
            border-radius: 15px;
            border: #94b39c;
        }

        .trashy:hover {
            background-color: gray;
        }

        #trash {
            background-color: #94b39c;
            border: #94b39c;
        }

        #quanti {
            width: 165px;
            margin: 10px 40px 0px 0px;
        }

        .quanti {
            width: 55px;
        }

        .quanto {
            float: right;
            margin-right: 10px;
        }

        #nome {
            margin-top: 10px;
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

        body {
            background-color: white;
        }

    </style>
</head>
<body>
<% List<Carrello> carrello = (List<Carrello>) request.getAttribute("listaCarrello");%>
<%double prezzoTotale = 0.0;%>

<div style=" background: linear-gradient(to bottom, lightskyblue 1%, white ); height:55px; padding:5px; background-image: url('https://i.imgur.com/A5Jizx6.jpeg'); background-repeat: repeat-x;"><span
        class="logo"> <a href="/"> <img src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png"
                                        style="height:50px "/> </a></span>
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
        <form class="example" action="ricerca" style="float:left;">
            <input type="text" placeholder="Search.." name="nome">
            <button type="submit"><img width="20"
                                       src="https://icon-library.com/images/white-magnifying-glass-icon/white-magnifying-glass-icon-11.jpg">
            </button>
        </form>
        <div style="float:right;"><a href="carrello">
            <button type="submit" class="home" type="submit" style="padding:12px;
          padding-bottom:12px; margin:0px;" style="padding:10px; padding-bottom:11px; borders:0px;">
                <img width="30" src="https://image.flaticon.com/icons/png/512/263/263142.png"></button>
        </a></div>
    </div>
</div>
</div>

<div class="contenuto" style="background-image: url('https://i.imgur.com/LdgYkpl.jpg'); background-repeat: no-repeat; background-position: bottom left;">
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <h1 style="color:#48352C"><i><b>Il tuo carrello</b></i></h1>
            </div>
        </div>
    </div>


    <div class="container container1">
        <div class="row">
            <div class="col-xs-12">
                <table class="table">
                    <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Prodotto</th>
                        <th>Quantità</th>
                        <th>Prezzo</th>
                        <th>Totale</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <%
                            for (Carrello c : carrello) {
                        %>
                        <td>
                            <form class="trash" action="delete" method="get">
                                <button class="trashy" id="trash" style="margin-right:10px;margin-top:20px;"
                                        type="submit" name="IDProdotto" value="<%=c.getIDProdotto()%>"/>
                                <img src="https://www.shareicon.net/data/256x256/2016/03/15/734059_tool_512x512.png"
                                     height="30">
                            </form>

                        </td>
                        <td>
                            <div class="imgProdotto"><img class="imgProdotto-img" src="<%=c.getProdotto().getImmagine()%>">
                            </div>
                        </td>

                        <td>
                            <div id="nome"><%=c.getProdotto().getNomeProdotto()%>
                            </div>
                        </td>
                        <td>
                            <form action="modificacarrello" method="get" id="quanti">
                                <input type="hidden" value="<%=c.getIDProdotto()%>" name="id"/>
                                <label for="quantita"></label>
                                <input class="quanti btn" style="background-color: white; margin:0px 0px 0px 0px;"
                                       type="number" id="quantita" name="quantita" min="1" max="100"
                                       value="<%=c.getQuantita()%>">
                                <input class="quanto btn" style="margin-top:0px;" type="submit" value="Modifica">
                            </form>
                        </td>
                        <td>
                            <div id="nome"><%if (c.getProdotto().getPrezzoScontato() != null) {%>
                                €
                                <script>document.write(parseFloat(<%=c.getProdotto().getPrezzoScontato() * c.getQuantita()%>).toFixed(2));</script>
                                <%prezzoTotale += c.getProdotto().getPrezzoScontato() * c.getQuantita();%>
                                <%} else { %>
                                €
                                <script>document.write(parseFloat(<%=c.getProdotto().getPrezzoProdotto() * c.getQuantita()%>).toFixed(2));</script>
                                <%prezzoTotale += c.getProdotto().getPrezzoProdotto() * c.getQuantita();%>
                                <% }%></div>
                        </td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td> €
                            <script>document.write(parseFloat(<%=prezzoTotale%>).toFixed(2));</script>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <form action="deleteall" method="get">
                                <button type="submit" class="btn">Svuota il carrello</button>
                                </a>
                            </form>


                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <a href="/ricevuta">
                                <button type="button" class="btn" style="margin-left: 20px;">Ordina</button>
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
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
