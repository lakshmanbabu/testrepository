package com.spring.tutorial.Dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.Model.SpringMvc;
import com.spring.tutorial.Model.SpringTitles;

@Repository
public class SpringDaoImpl implements SpringDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void saveSpringContent(SpringTitles springTitles) {
		sessionFactory.getCurrentSession().save(springTitles);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SpringMvc> getSprigList() {
		
		return sessionFactory.getCurrentSession().createQuery("from SpringMvc order by springId ASC").list();
	}

}
