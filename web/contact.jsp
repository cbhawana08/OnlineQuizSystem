<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Online Test Exam</title>
        <link rel="icon" href="resources/images/icon.jpg" type="image/jpg"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/registration.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/login.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body class="wrapper">
    <center>
        <div class="main">
            <div class="bar" id="bar">
                <%@include file="bar.jsp" %>
            </div>
            <div id="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="body" style="background-image: url(resources/images/background.jpg);">
                <div id="menu">
                    <%@include file="menu.jsp" %>
                </div>
                <div class="contents">
                    <div class="contact">
                       <div style="color: blue; font-size: 30px;margin-bottom: 10px; background-color: activecaption;"><b>Contact Us</b></div>
                      BHAWANA CHOUDHARY<br/>
                       VIT University,Vellore<br/>
                       EMAIL ID- chaudharybhawana50@gmail.com<br/>
                       CONTACT NO-8270512916
                       <br/>
                       <br/>
                       AKASH KUMAR YADAV<br/>
                       VIT University,Vellore<br/>
                       EMAIL ID- akashkumar.yadav2018@vitstudent.ac.in<br/>
                       CONTACT NO-8073372251
                       
                    </div>
                    
                </div>
                
                
            </div>
             
                <div id="footer">
                    <%@include  file="footer.jsp" %>
                </div>
        </div>
    </center>
    </body>
</html>
