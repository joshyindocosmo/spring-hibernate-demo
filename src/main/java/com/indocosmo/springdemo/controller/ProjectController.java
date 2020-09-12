package com.indocosmo.springdemo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.indocosmo.springdemo.model.Project;
import com.indocosmo.springdemo.service.ProjectService;

@Controller
public class ProjectController {

	private static final Logger logger = Logger.getLogger(ProjectController.class);


	@Autowired
	private ProjectService  projectService;

	
	@RequestMapping(value = "/")
	public String showEmployeePage() {
		return "projectHome";
	}
	
	@RequestMapping(value = "/getProjectList", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody List<Project>  postEmployeeData() {
 
		List<Project> listProject = projectService.getAllProjects();
		System.out.println("getProjectList");
		return listProject;
	}
 
	@RequestMapping(value = "/saveProject", method = RequestMethod.POST,produces = "application/json")
	public @ResponseBody Project saveProject(@RequestBody Project project) {
		
		Project returnProject=new Project();
		if (project.getId()!=0) { 
			projectService.updateProject(project);
		} else {
			projectService.addProject(project);
		}
		return returnProject;
	}

	
	@RequestMapping(value = "/getProject", method = RequestMethod.GET)
	public @ResponseBody Project getProject(@RequestParam int projectId) {
		
		System.out.println(projectId);
		Project Project = projectService.getProject(projectId);

		return Project;
	}
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/deleteProject", method = RequestMethod.POST)
	public ResponseEntity  deleteProject(@RequestParam int projectId) {
		
		System.out.println(projectId);
		projectService.deleteProject(projectId);

		 return new ResponseEntity(HttpStatus.OK);
	}

}