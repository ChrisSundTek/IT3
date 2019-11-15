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
    <title>Bestilling af tid</title>
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
<body>

<h2 id="heading1" style="color:#000000;"> <b> Vælg din tid </b> </h2>
<div id="container1">
    <p id="text1"><b>Bestil tid ved at vælge Dato, tid, hospital og hvilken undersøgelse du skal have</b> </p>

</div>
<div id="container3">
    <p id="text2">Tryk accepter når du færdig</p>
</div>
<div id="container4">
    <b> Vælg dato </b>
    <br>
<div id="datePicker1">
</div>
    <br>
    <b> Vælg tidspunkt </b>
    <br>
<div id="timePicker1">
</div>
    <br>
    <form>
        <p>
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
<div id="container5">
<a href="BekraeftelseOversigt.jsp">
    <button id="button1"><b>Accepter</b></button>
</a>
</div>
<div id="container6">
    <a href="AendreTid.jsp">
        <button style="margin:20px;" id="button2">Ændre eksisterende booking</button>
    </a>
</div>

</body>
<footer>
    <div id="container2">
        <a href="OversigtBorger.jsp">
            <button id="button4" style="margin:30px;"> <font size="+0">Tilbage til Oversigt </font> </button>
        </a>
    </div>
</footer>
</html>
