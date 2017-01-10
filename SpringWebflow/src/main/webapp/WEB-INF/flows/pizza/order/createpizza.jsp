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
<h1>Create pizza</h1>

<b>Actions:</b><br/>
<!-- <a href='${flowExecutionUrl}&_eventId=add'>Add pizza</a> |
<a href='${flowExecutionUrl}&_eventId=cancel'>Go back</a> -->


<!-- commandName is to bind form with a parituclar object: -->
<form:form commandName="newpizza">

  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
  <!--  size -->
  <form:radiobutton path="size" label="Small (12-inch)" value="SMALL" />
  <form:radiobutton path="size" label="Medium (14-inch)" value="MEDIUM" />
  <form:radiobutton path="size" label="Large (16-inch)" value="LARGE" />
  <form:radiobutton path="size" label="Extra large (18-inch)" value="EXTRA_LARGE" />
  <br/><br/>

  <!--  toppings -->
  <form:checkboxes path="toppings" items="${toppingsList}" delimiter="<br />"/><br/><br/>
  
  <input type="submit" name="_eventId_add" value="Add Pizza" />
  <input type="submit" name="_eventId_cancel" value="Cancel" />
  
</form:form>

</body>
</html>