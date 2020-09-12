package com.indocosmo.springdemo.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.indocosmo.springdemo.model.Project;

@Repository
public class ProjectDAOImpl implements ProjectDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addProject(Project Project) {
		sessionFactory.getCurrentSession().saveOrUpdate(Project);

	}

	@SuppressWarnings("unchecked")
	public List<Project> getAllProjects() {

		return sessionFactory.getCurrentSession().createQuery("from Project")
				.list();
	}

	@Override
	public void deleteProject(int ProjectId) {
		Project Project = (Project) sessionFactory.getCurrentSession().load(
				Project.class, ProjectId);
		if (null != Project) {
			this.sessionFactory.getCurrentSession().delete(Project);
		}

	}

	public Project getProject(int empid) {
		return (Project) sessionFactory.getCurrentSession().get(
				Project.class, empid);
	}

	@Override
	public Project updateProject(Project Project) {
		sessionFactory.getCurrentSession().update(Project);
		return Project;
	}

}