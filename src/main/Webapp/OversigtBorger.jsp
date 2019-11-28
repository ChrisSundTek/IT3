<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 13-11-2019
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Data.DB" %>
<%@ page import="Data.Aftale" %>
<%@ page import="java.util.List" %>
<%@ page import="Data.Typer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Oversigt</title>
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
    <%  DB db = new DB();

    %>
</head>
<% String cpr = request.getParameter("cpr"); %>
<body>
<h1 align="center">
    <b> Velkommen <%=cpr%> </b>
</h1>
<hr style="height: 5px; border: 0px solid #000000; border-top-width: 1px;" />
<h4> Kommende besøgstider: </h4>
    <br>
    <br>
    <table style="width:100%">
        <thead>
        <tr>
            <td> <b> Dato og Tidspunkt </b>  </td>
            <td> <b> Sygehus </b> </td>
            <td> <b> Afdeling </b> </td>
            <td> <b> Besked </b> </td>
            <td> <b> Undersøgelse </b> </td>
            <td> <b> Varighed </b></td>
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
                Typer typen = DB.getTyper(Type);
                String Afdeling = typen.getAfdeling();
                String Varighed = typen.getVarighed();
        %>

        <!---- Her indsættes din tabel ---->
        <tr>
            <td> <% out.println(Dato); %></td>
            <td> <% out.print(Sygehus);%> </td>
            <td> <% out.print(Afdeling);%> </td>
            <td> <% out.print(Fritekst); %> </td>
            <td> <% out.println(Type); %> </td>
            <td> <% out.print(Varighed);%> </td>
        </tr>
        </tbody>
        <% }%>
    </table>
    <h2> <b> Aflys tid </b> </h2>

    <div id="container1">
        <b>Aflys ved at vælge tid og trykke på aflys knappen</b>

    </div>
    <div id="container3">
        <p id="text2">Vælg din tid</p>
    </div>
    <div id="container4">
        <form action="servertest" method="get">
            <p>
                <label>Tid:
                    <input id="cpr" name ="cpr" value="<%=cpr%>" hidden />
                    <select id="Tid" name="Tid">
                        <option selected="selected">Vælg tid du vil aflyse</option>
                        <% List<Aftale> tid = DB.getAftale(cpr);
                            /* System.out.println(aftaler.size()); */
                            for(int t=0; t<tid.size(); t++) {
                                Aftale tiden = tid.get(t);
                                String Dato = tiden.getDato();
                        %>
                        <option value="<%=Dato%>"> <% out.println(Dato); %> </option>
                        <% } %>
                    </select>
                </label>
            </p>
    <br>
        <b> <input  type="submit" value="Aflys"/> </b>
</form>
    </div>
<footer>
    <div id="container6">
        <a href="index.html">
            <button id="button4">Log ud</button>
        </a>
    </div>
</footer>
</body>
</html>