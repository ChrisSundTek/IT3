<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 13-11-2019
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personale LogIn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://designer.igniteui.com/packages/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="http://designer.igniteui.com/css/themes/infragistics/infragistics.theme.css">
    <link rel="stylesheet" href="http://designer.igniteui.com/css/structure/infragistics.css">

    <link href="Baggrund.css" rel="stylesheet" type="text/css">
    <!--
        Update the Ignite UI script references to your licensed copies before deploying.
        Ignite UI License: http://www.infragistics.com/legal/license/ultimate/
    -->
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.min.js"></script>
    <script src="http://designer.igniteui.com/js/infragistics.core.js"></script>
    <script src="http://designer.igniteui.com/js/infragistics.lob.js"></script>
    <!-- You may remove the datasources.js script if you are not using Designer sample data. -->
    <script src="http://designer.igniteui.com/js/datasources.js"></script>
    <script id="textarea1">
        $(document).ready(function () {

        });
    </script>

</head>
<body>
<h1 id="heading1" style="color:#000000;"> <b> Personale </b> </h1>
<div>
<form action="Personaleserver" method="post">
    <h5>AutorisationID:</h5>
    <input id="input1" placeholder="Indtast ID" name="AutorisationID" required/>
<br>
    <h5>Adgangskode:</h5>
    <input id="input2" type="password" placeholder="Indtast Password" name="Password" required/>
<br>
    <a href="OversigtPersonale.jsp">
        <button type="submit" style="margin-top:10px">Log ind</button>
    </a>
</form>
</div>
</body>
<footer>
    <div id="container2">
        <a href="index.html">
            <button id="button4" style="margin:45px;"> <font size="+0">Tilbage til forsiden </font> </button>
        </a>
    </div>
</footer>
</html>

