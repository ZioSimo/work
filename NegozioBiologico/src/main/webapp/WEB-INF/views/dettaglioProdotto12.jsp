<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10/03/2021
  Time: 16:19
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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>






    <style>
        .contenuto{
            height:750px;
            font-size:17px;
        }

        .logo{
            padding-left: 10px;
            float:left;
            margin-right:2%
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
            background-color: #4CAF50;
            color:white;
            border-radius:30px;
            outline:none;
        }

        .example input[type=text] {
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            background: #f1f1f1;
            width:186px;
            border-radius:20px 0px 0px 20px;
            margin-top: 6px;
            padding-left: 15px;
            outline:none;
        }

        .example button {
            padding-left: 15px;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-right: 15px;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            float:right;
            transition-duration: 0.3s;
            background: linear-gradient(to right,#1B5D2B, green);
            margin-top: 6px;
            border-radius:0px 20px 20px 0px
        }

        .example button:hover {
            background: linear-gradient(to right, darkgreen, black 500%);
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
        }

        .stelle{
            height:40px;
            padding-left:5px;
            padding-top:2px;
        }

        #nomeProdotto{
            padding:5px;
            height:auto;
            font-size:30px;

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

        #pulsante{
            color:white;
        }

        #inputPulsante{
            margin-top:15px;
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
            height:280px;
            width: 60%;
            margin-left:100px;

        }

        #punti{
            margin-top:20px;
            margin-left:100px;
        }


    </style>



<style>
    .contenuto{
        height:750px;
        font-size:17px;
    }

    .logo{
        padding-left: 10px;
        float:left;
        margin-right:2%
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
        background-color: #4CAF50;
        color:white;
        border-radius:30px;
        outline:none;
    }

    .example input[type=text] {
        padding-top: 10px;
        padding-bottom: 10px;
        font-size: 17px;
        border: 1px solid grey;
        float: left;
        background: #f1f1f1;
        width:186px;
        border-radius:20px 0px 0px 20px;
        margin-top: 6px;
        padding-left: 15px;
        outline:none;
    }

    .example button {
        padding-left: 15px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-right: 15px;
        color: white;
        font-size: 17px;
        border: 1px solid grey;
        border-left: none;
        float:right;
        transition-duration: 0.3s;
        background: linear-gradient(to right,#1B5D2B, green);
        margin-top: 6px;
        border-radius:0px 20px 20px 0px
    }

    .example button:hover {
        background: linear-gradient(to right, darkgreen, black 500%);
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
    }

    .stelle{
        height:40px;
        padding-left:5px;
        padding-top:2px;
    }

    #nomeProdotto{
        padding:5px;
        height:auto;
        font-size:30px;

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

    #pulsante{
        color:white;
    }

    #inputPulsante{
        margin-top:15px;
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
        height:280px;
        width: 60%;
        margin-left:100px;

    }

    #punti{
        margin-top:20px;
        margin-left:100px;
    }
    <div id="boxes">
                   <div id="dialog" class="window">
                                                  Your Content Goes Here
        <div id="popupfoot"> <a href="#" class="close agree">I agree</a> | <a class="agree"style="color:red;" href="#">I do not agree</a> </div>
                                                                                                                                                                                                                </div>
                                                                                                                                                                                                                  <div id="mask"></div>
                                                                                                                                                                                                                                   </div>