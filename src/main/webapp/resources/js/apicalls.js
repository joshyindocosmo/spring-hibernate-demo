
function getProjectList(){
	
	var url = "getProjectList";
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : url,
		dataType : 'json',				
		success : function(data) {
				//console.log(data);
				var projects="";
				if(data.length==0){
					$("#nodata").show();
				}else{
					$("#nodata").hide();
				}
				
				for(i=0;i<data.length;i++){
				projects+=`
				  <tr>
			        <td>`+data[i].projectName+`</td>
			        <td>`+data[i].teamSize+`</td>
			        <td>`+data[i].projectSpan+` months</td>

					<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#projectModal" onclick="editProject(`+data[i].id+`)"> Edit</button>
					 </td>
					<td> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#deleteModal"  onclick="deleteProjectConfirm(`+data[i].id+`,'`+data[i].projectName+`')">Delete </button></td>			     
					 </tr>`;
				}
				$("#projects").html(projects);
		},
		error : function(xhr, error) {
			console.log(xhr, error);
	
		}
	});
	
}




$(document).on('click','#addProjectButton',function(e) {
 $("#projectId").val("0");
	$("#projectName").val("");
	$("#teamSize").val("");
	$("#projectSpan").val("");
	$("#projectModal").modal("show");
});


function 	saveProject(){
	var url = "saveProject";
	
	if($("#projectName").val()==""){
		alert("please add project name");
		return;
	}else if($("#teamSize").val()==""){
		alert("please add team size");
		return;
	}else if($("#projectSpan").val()==""){
		alert("please add project span");
		return;
	}
	
	var project = {};
	project["id"] = $("#projectId").val();
	project["projectName"] = $("#projectName").val();
	project["teamSize"] = $("#teamSize").val();
	project["projectSpan"] = $("#projectSpan").val();
	
	$.ajax({
	     type: "POST",
	     contentType: "application/json",
	     url: url,
	     data: JSON.stringify(project),
	     dataType: 'json',
	     timeout: 600000,
	     success: function (data) {
	       	//console.log(data);
			getProjectList();
			$("#projectModal").modal("hide");
	     },
	     error: function(xhr, error) {
	        console.log(xhr, error);
	     }
	});
}



function 	editProject(id){
	var url = "getProject";
	
	$.ajax({
	     type: "GET",
	     url: url,
	     data: {projectId:id},
	     success: function (data) {
	       //	console.log(data);
			$("#projectName").val(data.projectName);
			$("#teamSize").val(data.teamSize);
			$("#projectSpan").val(data.projectSpan);
			 $("#projectId").val(data.id);
	     },
	     error: function(xhr, error) {
	        console.log(xhr, error);
	     }
	});
}

	
function 	deleteProjectConfirm(id,projectName){
	
	$("#deleteId").val(id);
	$("#confirmMessage").html("Confirm '"+projectName+"'-project deletion ?");
	
}	
	

function 	deleteProject(){
	var url = "deleteProject";
	var id=$("#deleteId").val();
	$.ajax({
	     type: "POST",
	     url: url,
	     data: {projectId:id},
	     success: function (data) {
	       //	console.log(data);
			getProjectList();
			$("#deleteModal").modal("hide");
	     },
	     error: function(xhr, error) {
	        console.log(xhr, error);
	     }
	});
}
