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
  <h2>Project Table 4</h2>
 
  <table class="table">
    <thead>
      <tr>
        <th>Project name</th>
        <th>Team size</th>
        <th>Project span</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody id="projects">
     <!--  <tr>
        <td>IOT project 1</td>
        <td>5</td>
        <td>6 months</td>
      </tr> -->
    </tbody>
  </table>
<p id="nodata">No data found</p>
 
  <!-- Trigger the modal with a button -->
<!--   <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#projectModal" id="addProjectButton">Add Project</button> -->
  <button type="button" class="btn btn-info btn-lg" id="addProjectButton">Add Project</button>

  <!-- Modal -->
  <div class="modal fade" id="projectModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title">Add Project</h4>
           <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
		      <label for="projectName">Project name:</label>
		      <input type="email" class="form-control" id="projectName" placeholder="Enter project name" name="projectName" required="required">
		    </div>
		    <div class="form-group">
		      <label for="pwd">Team size:</label>
		      <input type="number" min="1" class="form-control" id="teamSize" placeholder="Enter team size" name="teamSize">
		    </div>
		    <div class="form-group">
		      <label for="pwd">Project span in months :</label>
		      <input type="number" min="1" class="form-control" id="projectSpan" placeholder="Enter project span" name="projectSpan">
		    </div>
			<input type="hidden" id="projectId" value="0">
			
		  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info btn-lg"  id="add" onclick="saveProject()">Save </button>
        </div>
      </div>
    </div>
  </div>
  
    <!-- Modal -->
  <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title">Delete Project</h4>
           <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          
		  <p id="confirmMessage"></p> 
			
		  
        </div>
        <div class="modal-footer">
        	<input type="hidden" value="" id="deleteId">
          <button type="button" class="btn btn-info btn-lg"  id="deleted" onclick="deleteProject()">Yes </button>
        </div>
      </div>
    </div>
  </div>
  
  
</div>

</body>

<script type="text/javascript">

$(window).on('load', function() {
	getProjectList();
});
	
</script>

</html>
