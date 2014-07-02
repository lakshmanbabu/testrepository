package com.spring.tutorial.Dao;

import java.util.List;

import com.spring.tutorial.Model.SpringMvc;

public interface SpringDao {

	public void saveSpringContent(SpringMvc springMvc);

	public List<SpringMvc> getSprigList();

}
