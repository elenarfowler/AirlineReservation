<%--
  Created by IntelliJ IDEA.
  User: toshihirokuboi
  Date: 2019-11-21
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
</head>
<body>
<div style="width:30%;height:50%;margin:10% auto;padding: 10px;">
<form method="post" action="edit_customer">
    <p><label for="id">ID</label><br/><input type="text" name="id" id="id" value="${customer.id}" size="30" readonly="readonly"></p>
    <p><label for="ssn">SSN</label><br/><input type="text" name="ssn" id="ssn" value="${customer.ssn}" size="30"></p>
    <p><label for="name">NAME</label><br/><input type="text" name="name" id="name" value="${customer.name}" size="30"></p>
    <p><label for="address">ADDRESS</label><br/><input type="text" name="address" id="address" value="${customer.address}" size="30"></p>
    <p><label for="phone">PHONE</label><br/><input type="text" name="phone" id="phone" value="${customer.phone}" size="30"></p>
    <input type="submit">
</form>
    <p><a href="customers">back to customers</a></p>
</div>
</body>
</html>
