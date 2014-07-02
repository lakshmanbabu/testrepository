package com.spring.tutorial.Service;

import java.util.List;

import com.spring.tutorial.Model.SpringMvc;

public interface SpringService {

	public void saveSpringContent(SpringMvc springMvc);

	public List<SpringMvc> getSprigList();

}
