<%--
  Created by IntelliJ IDEA.
  User: Christoffer
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


    <link rel="stylesheet" type="text/css" href="style.css">
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


    <script>
        function passvalues() {
            var navn = document.getElementById("input1").value;
            localStorage.setItem("textvalue",navn);
            return false;
        }
    </script>
    <script type= "text/javascript">
        function login() {
            var navn = document.getElementById("Navn").value;
            var kode = document.getElementById("password").value;
            if( navn== "lab18" && kode == "lab18") {
                alert("Login Godkendt")
                locate="OversigtPersonale.jsp"
                return false;
            } else {
                alert("Forkert brugernavn/password");
                return false;
            }

        }
    </script>


</head>
<body>
<h1 id="heading1"> <b> Velkommen til login </b> </h1>
<div id="container3">
    <form action="servertest" method="post">
        <input id="CPRnummer" type="number" placeholder="Indtast CPR" name="CPR" required/>
        <input id="password" type="password" placeholder="Indtast Password" name="Password" required/>
        <input type="submit" value="Submit">
    </form>

</div>
</body>
<footer>
    <div id="container2">
        <a href="Forside.jsp">
            <button id="button4" style="margin:45px;"> <font size="+0">Tilbage til forsiden </font> </button>
        </a>
    </div>
</footer>
</html>

