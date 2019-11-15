<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ændre Tid</title>
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
<body>

<h2 id="heading1"> <b> Ændre eller aflys tid </b> </h2>

<div id="container1">
    <p id="text1"><b>Ændre tidspunkt eller aflys ved at vælge tid og trykke knappen</b> </p>

</div>
<div id="container3">
    <p id="text2">Vælg din tid</p>
</div>
<div id="container4">
    <form>
        <p>
            <label>Tid:
                <select id="tid" name="Tid">
                    <option value="" selected="selected">Tid1</option>
                    <option value="<% out.println("123"); %>" >Tid2</option>
                    <option value="" >Tid3</option>
                    <option value="" >Tid4</option>
                </select>
            </label>
        </p>
    </form>
</div>
<div style="margin:10px;" id="container5">
    <button id="button1">Aflys tid </button>

    <button style="margin:20px;" id="button2">Ændre eksisterende tid</button> <!--Når der trykkes ændre slettes tiden også, man bliver bare viderestillet til Tidsbestlling siden -->
</div>
