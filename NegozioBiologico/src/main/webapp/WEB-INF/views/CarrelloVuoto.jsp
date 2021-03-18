<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 08/03/2021
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>carrello vuoto</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet"
          type="text/css">

    <style>
        .logo {
            padding-left: 10px;
            float: left;
            margin-right: 2%;
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
            outline: none;
            border-radius: 30px;
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

        .category-box img {
            height: 149px;
        }

        .hello {
            outline: none;
            background-color: lightgreen;
            color: green;
        }

        .hello:hover {
            background-color: dodgerblue;
        }

        .margini{
            margin-right: 210px;
        }

        @media screen and (max-width: 1199px) {

            .category-box img {
                height: 203px;
                width: 100%
            }
        }

        @media screen and (max-width: 991px) {

            .category-box img {
                height: 294px;
                width: 100%
            }
        }

        @media screen and (max-width: 767px) {

            .category-box img {
                height: 206px;
                width: 100%
            }
        }

        @media screen and (max-width: 370px) {

            .category-box img {
                height: auto;
                width: 100%
            }
        }

    </style>
</head>
<body>
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
<br><br>
<div class="contenuto"
     style="background-image: url('https://i.imgur.com/LdgYkpl.jpg'); background-repeat: no-repeat; background-position: bottom left; padding-bottom: 20px;">
    <div style="text-align:center;"><img width="40%" src="https://www.rphbuddy.com/public/img/empty-cart-2.png"></div>
    <br><br><br>
    <div class="vuoto" style="text-align: center; font-weight:bold; font-size:25px"> Il carrello è vuoto</div>
    <br><br><br>
    <div style="text-align:center;">
        <a href="Prodotti">
        <button class="hello"
                style="height: 50px; text-align: center; font-weight:bold; border-radius:30px;transition-duration: 0.3s;">
            TORNA ALLA PAGINA PRODOTTI
        </button>
        </a>
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
