<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>registernewcustomer.jsp</h1>

<b>Zzz..</b>
<!--  order comes from customer-flow.xml where it is declared an input. -->
	<form:form commandName="order">
	  <!-- This is for the Spring so it keeps tracking forms: _flowExecutionKey = ${flowExecutionKey}  -->
	  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	  
	  <!--  fields from the order Object -->
	  <b>Phone number:</b>
	  <form:input path="customer.phoneNumber"/><br /> <!-- it is fully: order.customer.phoneNumber -->
	  
	  <b>Customer name:</b>
	  <form:input path="customer.name"/><br />
	  
	  <b>Customer address:</b>
	  <form:input path="customer.address"/><br />
	  
	  <b>Customer city:</b>
	  <form:input path="customer.city"/><br />
	  
	  <b>Customer state:</b>
	  <form:input path="customer.state"/><br />
	  
	  <b>Customer zipcode:</b>
	  <form:input path="customer.zipCode"/><br />
	  
	  <!--  submission stuff: two end results -->
	  <input type="submit" name="_eventId_submit" value="Send" />
	  <input type="submit" name="_eventId_cancel" value="Cancel" />
	</form:form>
</body>
</html>