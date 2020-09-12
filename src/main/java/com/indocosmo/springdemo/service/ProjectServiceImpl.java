package com.indocosmo.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.indocosmo.springdemo.dao.ProjectDAO;
import com.indocosmo.springdemo.model.Project;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDAO ProjectDAO;

	@Override
	@Transactional
	public void addProject(Project Project) {
		ProjectDAO.addProject(Project);
	}

	@Override
	@Transactional
	public List<Project> getAllProjects() {
		return ProjectDAO.getAllProjects();
	}

	@Override
	@Transactional
	public void deleteProject(Integer projectId) {
		ProjectDAO.deleteProject(projectId);
	}

	public Project getProject(int projectId) {
		return ProjectDAO.getProject(projectId);
	}

	public Project updateProject(Project Project) {
		// TODO Auto-generated method stub
		return ProjectDAO.updateProject(Project);
	}

	public void setProjectDAO(ProjectDAO ProjectDAO) {
		this.ProjectDAO = ProjectDAO;
	}

}
