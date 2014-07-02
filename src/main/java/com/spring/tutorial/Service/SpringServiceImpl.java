package com.spring.tutorial.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tutorial.Dao.SpringDao;
import com.spring.tutorial.Model.SpringMvc;

@Service
public class SpringServiceImpl implements SpringService{

	@Autowired
	public SpringDao springDao;
	
	@Override
	@Transactional
	public void saveSpringContent(SpringMvc springMvc) {
		springDao.saveSpringContent(springMvc);
	}

	@Override
	@Transactional
	public List<SpringMvc> getSprigList() {
		
		return springDao.getSprigList();
	}

}
