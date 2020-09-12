package com.indocosmo.springdemo.dao;

import java.util.List;

import com.indocosmo.springdemo.model.Project;

public interface ProjectDAO {

	public void addProject(Project Project);

	public List<Project> getAllProjects();

	public void deleteProject(int ProjectId);

	public Project updateProject(Project Project);

	public Project getProject(int Projectid);
}
