<%--
  Created by IntelliJ IDEA.
  User: Christoffer
  Date: 13-11-2019
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DB" %>
<%@ page import="Aftale" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Oversigt</title>
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

</head>
<% String cpr = request.getParameter("cpr"); %>

<body>
<header>
    <h1> <b>Velkommen: <%=cpr%> </b> </h1>
</header>
<%  DB db = new DB();


%>

<div id="container2"> <p align="center">
    <a href="Tidsbestilling.jsp">
        <button id="button1"> <font size="+2">Tidsbestilling </font> </button>
    </a>
</p> </div>
<div id="booking">
    <h3>
        Nuværende bookinger:
    </h3>
    <table style="width:100%">
        <thead>
        <tr>
            <td> <b> Tidspunkt </b>  </td>
            <td> <b> Sygehus </b> </td>
            <td> <b> Afdeling </b> </td>
            <td> <b> Besked </b> </td>
            <td> <b> Undersøgelse </b> </td>
        </tr>
        </thead>
        <tbody>
        <% List<Aftale> aftaler = DB.getAftale(cpr);
            /* System.out.println(aftaler.size()); */
            for(int i=0; i<aftaler.size(); i++) {
                Aftale app = aftaler.get(i);
                String Sygehus = app.getSygehus();
                String Type = app.getType();
                String Dato = app.getDato();
                String Fritekst = app.getFritekst();
        %>
        <!---- Her indsættes din tabel ---->
        <tr>
            <td> <% out.println(Dato); %></td>
            <td> <% out.print(Sygehus);%> </td>
            <td> Mangler </td>
            <td> <% out.print(Fritekst); %> </td>
            <td> <% out.println(Type); %> </td>

        </tr>
        <% }%>
        </tbody>
    </table>
</div>

</body>
<footer>
    <div id="container4">
        <a href="Forside.jsp">
            <button id="button4" style="margin:45px;"> <font size="+0">Log ud </font> </button>
        </a>
    </div>
</footer>
</html>