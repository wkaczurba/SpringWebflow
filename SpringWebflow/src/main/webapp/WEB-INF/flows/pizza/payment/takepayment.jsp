<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
  function showCreditCardField() {
	  var cssCreditCardStyle = document.paymentForm.creditCard.style; 
	  cssCreditCardStyle.visibility = 'visible';
  }
  
  function hideCreditCardFIeld() {
	  var cssCreditCardStyle = document.paymentForm.creditCard.style;
	  cssCreditCardStyle.visibility = 'hidden';
  }
  
</script>
</head>
<body>
<h1>Take payment...</h1>

<form:form commandName="paymentdetails" name="paymentForm">
  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
  <!-- type -->
  <!-- creditCard string  -->
  <form:radiobutton path="type" value="CASH" label="Cash (taken at delivery)" onclick="hideCreditCardField()" /><br />
  <form:radiobutton path="type" value="CREDIT_CARD" label="Credit card" onclick="showCreditCardField()" /><br />

  <form:input path="creditCard" cssStyle="visibility:hidden;"/><br/><br />
  
  <input type="submit" name="_eventId_pay" value="pay" />
  <input type="submit" name="_eventId_cancel" value="cancel" />
</form:form>


<a href='${flowExecutionUrl}&_eventId_pay'>Pay</a> |
<a href='${flowExecutionUrl}&_eventId_cancel'>Cancel</a>

</body>
</html>
