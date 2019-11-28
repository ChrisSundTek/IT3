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


</head>
<% String cpr = request.getParameter("cpr"); %>
<body>
<h1 align="center">
    <b> Velkommen <%=cpr%>
    </b>
</h1>

<div id="container2"> <p align="center">
    <a href="Tidsbestilling.jsp?cpr="+ CPR>
        <button id="button1"> <font size="+2">Tidsbestilling </font> </button>
    </a>
</p> </div>
<div id="booking">
</div>
<%  DB db = new DB();


%>
<h4>
    Kommende besøgstider:
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
        %>
        <!---- Her indsættes din tabel ---->
        <tr>
            <td> <% out.println(Dato); %></td>
            <td> <% out.print(Sygehus);%> </td>
            <td> Mangler </td>
            <td> <% out.print(Fritekst); %> </td>
            <td> <% out.println(Type); %> </td>
            <td> Mangler </td>

        </tr>
        <% }%>
        </tbody>
    </table>
</h4>
</h4>
<hr style="height: 5px; border: 0px solid #000000; border-top-width: 1px;" />
<h4 style="color:#000000;"> <b> Bestil tid </b> </h4>
<div id="container1">
    Forespørg tid
</div>
<!-- <form action="servertest" method="add"> -->
<div id="container2">
    <b> Vælg dato </b>
    <br>
    <div>
        <input id="datePicker1" name="dato">
    </div>
    <br>
    <b> Vælg tidspunkt </b>
    <br>
    <div>
        <input id="timePicker1" name="tid">
    </div>
    <form>
        <p>
            <br>
            <label>Hospital
                <br>
                <select id="hospital" name="hospital">
                    <option value="" selected="selected">Vælg hospital</option>
                    <option value="4"> Hospital 4</option>
                    <option value="6"> Hospital 6</option>
                </select>
            </label>
        </p>
    </form>
</div>
<div>
    <form>
        <p>
            <label>Undersøgelse
                <br>
                <select id="undersøgelse" name="undersøglese">
                    <option value="" selected="selected">Vælg Undersøgelse</option>
                    <option value="BIOPSI"> Vævsprøve </option>
                    <option value="BP"> Blodprøve </option>
                    <option value="CT"> CT scanning </option>
                    <option value="EEG"> Elektroencefalografi </option>
                    <option value="EKG"> Elektrokardiografi </option>
                    <option value="ENDOSP"> Endoskopi </option>
                    <option value="MR"> MR scanning </option>
                    <option value="PetCT"> Pet og CT scanning </option>
                    <option value="RTG"> Røntgen </option>
                    <option value="ULSC"> Ultralyd </option>
                </select>
            </label>
        </p>
    </form>
</div>
<br>
<div id="container3">
    <a href="BekraeftelseOversigt.jsp"> <b>
        <input  type="submit" value="Accepter"/> </b>
    </a>
</div>
<!-- </form> -->
<br>
<div id="container4">
    <a href="AendreTid.jsp">
        <button id="button2">Ændre eksisterende booking</button>
    </a>
</div>
</body>
<br>
    <div id="container11">
        <a href="index.html">
            <button id="button11"> <font size="+0">Log ud </font> </button>
        </a>
    </div>
</div>

</body>
<footer>
    <div id="container5">
        <a href="index.html">
            <button id="button4" style="margin:45px;"> <font size="+0">Log ud </font> </button>
        </a>
    </div>
</footer>
</html>