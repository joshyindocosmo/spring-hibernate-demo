package com.indocosmo.springdemo.service;

import java.util.List;

import com.indocosmo.springdemo.model.Project;

public interface ProjectService {
	
	public void addProject(Project Project);

	public List<Project> getAllProjects();

	public void deleteProject(Integer projectId);

	public Project getProject(int projectId);

	public Project updateProject(Project Project);
}
