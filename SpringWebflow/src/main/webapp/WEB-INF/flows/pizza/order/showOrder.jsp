<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Show order</h1>

<h3>Deliver to:</h3>
Name: ${order.customer.name}<br />
Address: ${order.customer.address}<br />
City: ${order.customer.city}<br />
State: ${order.customer.state}<br />
ZipCode: ${order.customer.zipCode}<br />
Phone: ${order.customer.phoneNumber}<br />
<hr>
Order total: ${order.total}<br />

<c:if test="${fn:length(order.pizzas) eq 0}">
<b>No pizzas in this order.</b>
</c:if>
<br/>
<c:forEach items="${order.pizzas}" var="pizza">
  <li>${pizza.size} : 
  	<c:forEach items="${pizza.toppings}" var="topping">${topping}</c:forEach>
  </li>
</c:forEach>

<br />

<b>Actions:</b><br />
<a href='${flowExecutionUrl}&_eventId=addpizza'>Add pizza</a> |
<a href='${flowExecutionUrl}&_eventId=checkout'>Checkout</a> |
<a href='${flowExecutionUrl}&_eventId=cancel'>Cancel</a><br/>

<hr>
Other way of displaying actions:
<form:form>
   <input type="submit" name="_eventId_addpizza" value="Add pizza"/>
   <input type="submit" name="_eventId_checkout" value="Checkout"/>
   <input type="submit" name="_eventId_cancel" value="Cancel"/>
</form:form>


</body>
</html>