package com.spring.tutorial.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tutorial.Dao.SpringDao;
import com.spring.tutorial.Model.SpringMvc;
import com.spring.tutorial.Model.SpringTitles;

@Service
@Transactional
public class SpringServiceImpl implements SpringService{

	@Autowired
	public SpringDao springDao;
	
	@Override
	
	public void saveSpringContent(SpringTitles springTitles) {
		springDao.saveSpringContent(springTitles);
	}

	@Override
	public List<SpringMvc> getSprigList() {
		
		return springDao.getSprigList();
	}

}
