<%--
  Created by IntelliJ IDEA.
  User: toshihirokuboi
  Date: 2019-11-21
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a Reservation</title>
</head>
<body>
<div style="width:30%;height:50%;margin:10% auto;padding: 10px;">
    <p><a href="./">home</a></p>
<form method="post" action="reservationcreate">
    <p><label for="Passenger Id">Passenger Id</label><br/><input type="text" name="Passenger_id" id="Passenger_id" value="" size="30"></p>
    <p><label for="Seat No">Seat No</label><br/><input type="text" name="Seat_no" id="Seat_no" value="" size="30"></p>
    <p><label for="Flight No">Flight No</label><br/><input type="text" name="Flight_no" id="Flight_no" value="" size="30"></p>
    <p><label for="Credit No">Credit No</label><br/><input type="text" name="Credit_no" id="Credit_no" value="" size="30"></p>
    <input type="submit">
</form>
</div>
</body>
<script>
    document.addEventListener("DOMContentLoaded", function(event) {
        const queryString = window.location.search;
        var seat_no = queryString.split("?")[1].split("&")[0].split("=")[1];
        var flight_no = queryString.split("?")[1].split("&")[1].split("=")[1];
        document.getElementById('Seat_no').value = seat_no;
        document.getElementById('Flight_no').value = flight_no;
    });
</script>
</html>