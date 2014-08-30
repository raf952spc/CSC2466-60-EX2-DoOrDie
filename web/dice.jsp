<%-- 
    Document   : dice
    Created on : Aug 21, 2014, 8:03:49 PM
    Author     : rfoy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Do or Die</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/die.css"/>
        <jsp:useBean id="dice1" scope="page" class="model.Die" />
        <jsp:useBean id="dice2" scope="page" class="model.Die" />
    </head>
    <body>
        <section id="container">
            <div id="banner">Do Or Die</div>
            <div id="dice_container">
                <img class="die" id="d1" src="images/dado_${dice1.faceValue}.svg"
                     alt="${dice1.faceValue}"/>
                <img class="die" id="d2" src="images/dado_${dice2.faceValue}.svg"
                     alt="${dice2.faceValue}"/>
            </div>
            <div id="rollbtn_box">
                <form action="<c:url value='.'/>">
                <button class="rollbtn" type="submit">Roll</button>
                </form>
            </div>
        </section>
    </body>
</html>

