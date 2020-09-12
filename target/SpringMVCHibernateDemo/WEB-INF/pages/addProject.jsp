<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapcss"></spring:url>
	<link href="${bootstrapcss}" rel="stylesheet">
	
	<spring:url value="resources/js/jquery.min.js"
		var="jquery"></spring:url>
	<script src="${jquery}"></script>
	
	<spring:url value="resources/js/bootstrap.min.js"
		var="bootstrap"></spring:url>
	<script src="${bootstrap}"></script>
	
	<spring:url value="resources/js/apicalls.js"
		var="apicalls"></spring:url>
	<script src="${apicalls}"></script>

    
</head>
<body>

<div class="container">
  <h2>Vertical (basic) form</h2>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  
</div>

</body>

<script type="text/javascript">


	
</script>

</html>
