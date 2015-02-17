package com.spring.tutorial.Dao;

import java.util.List;

import com.spring.tutorial.Model.SpringMvc;
import com.spring.tutorial.Model.SpringTitles;

public interface SpringDao {

	public void saveSpringContent(SpringTitles springTitles);

	public List<SpringMvc> getSprigList();

}
