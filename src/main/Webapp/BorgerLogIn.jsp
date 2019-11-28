<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 13-11-2019
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log Ind</title>
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

    <script id="code">
        $(document).ready(function () {
        });
    </script>

</head>
<body>
<h1 id="heading1"> <b> Velkommen til login </b> </h1>
<div id="container3">
    <form action="servertest" method="post">

    CPR-NUMMER:<br>
    <input type="number" id="CPRnummer" placeholder="CPR" required name="CPR" />
    <br>
        <br>
        PASSWORD:
        <br>
    <input id="password" type="password" placeholder="Password" name="Password" required />
        <br>
    <input style="margin-top:20px" font size="+1" type="submit" value="Log ind"/>

    </form>
</div>
</body>
<footer>
    <br>
    <br>
    <br>
    <div id="container2">
        <a href="index.html">
            <button id="button4"> <font size="+0">Tilbage til forsiden </font> </button>
        </a>
    </div>
</footer>
</html>

