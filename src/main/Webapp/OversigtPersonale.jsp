<%@ page import="Data.Kalender" %>
<%@ page import="Data.PersonaleDB" %>
<%@ page import="Data.Typer" %>
<%@ page import="Data.DB" %>
<%@ page import="java.util.List" %><%--
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
    <title>PersonaleOversigt</title>
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
            $("#datePicker1").igDatePicker({
                dateDisplayFormat: "d/M/yyyy",
                dataMode: "displayModeText",
                minDate: "dateToday",
            });
            $("#timePicker1").igTimePicker({
                timeInputFormat: "HH:mm",
                itemsDelta: {
                    minutes: 15
                },
                dropDownOnReadOnly: false,
                buttonType: "dropdown",
                "maxValue": "16:45",
                "minValue": "08:00",
                toUpper: false
            });

        });
    </script>

</head>
<% String id = request.getParameter("AutorisationID"); %>
<body>
<h1 align="center">
    <b> Velkommen <%=id%> </b>
</h1>
    <div>
        <h3>Kalender</h3>
        <br>
        <div id="container3">
            Vælg tider i kalenderen
        </div>
        <div id="container4">
            <form action="PersonaleServer" method="get">
                <p>
                    <label>Tid:
                        //<input id="cpr" name ="cpr" value="<%=cpr%>" hidden />
                        <select id="Tid" name="Tid">
                            <option selected="selected">Vælg tid du vil aflyse</option>
                            <% List<Kalender> tid = PersonaleDB.getKalender(dato);
                                /* System.out.println(aftaler.size()); */
                                for(int t=0; t<tid.size(); t++) {
                                    Kalender tiden = tid.get(t);
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
        <br>
        <table style="width:100%">
            <thead>
            <tr>
                <td> <b> Patient </b> </td>
                <td> <b> Dato og Tidspunkt </b> </td>
                <td> <b> Sygehus </b> </td>
                <td> <b> Afdeling </b> </td>
                <td> <b> Årsag </b> </td>
                <td> <b> Undersøgelse </b> </td>
                <td> <b> Varighed </b></td>
            </tr>
            </thead>
            <tbody>
            <% List<Kalender> kalender = PersonaleDB.getKalender(dato);
                /* System.out.println(aftaler.size()); */
                for(int i=0; i<kalender.size(); i++) {
                    Kalender tider = kalender.get(i);
                    String Patient = tider.getPatient();
                    String Sygehus = tider.getSygehus();
                    String Type = tider.getType();
                    String Dato = tider.getDato();
                    String Fritekst = tider.getFritekst();
                    Typer typen = DB.getTyper(Type);
                    String Afdeling = typen.getAfdeling();
                    String Varighed = typen.getVarighed();
            %>

            <!---- Her indsættes din tabel ---->
            <tr>
                <td> <% out.println(Patient); %></td>
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
    </div>
        <div>
        <button id="button3"> <font size="+1"> Send indkaldelser </font> </button>
        </div>
    </body>
<footer>
    <div id="container2">
        <a href="index.html">
            <button id="button4" style="margin:45px;"> <font size="+0">Log ud </font> </button>
        </a>
    </div>
</footer>
</html>
