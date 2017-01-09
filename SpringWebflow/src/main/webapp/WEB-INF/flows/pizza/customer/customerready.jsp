<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>customer ready</h1>

<!--  Display details: -->
Phone number: ${order.customer.phoneNumber}<br/>
Name: ${order.customer.name}<br/>
Address: ${order.customer.address}<br/>
City: ${order.customer.city}<br/>
State: ${order.customer.state}<br/>
ZipCode: ${order.customer.zipCode}<br/>

<br/>
<a href='${flowExecutionUrl}&_eventId=next'>Next...</a>

</body>
</html>