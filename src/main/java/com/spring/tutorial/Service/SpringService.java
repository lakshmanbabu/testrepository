package com.spring.tutorial.Service;

import java.util.List;

import com.spring.tutorial.Model.SpringMvc;
import com.spring.tutorial.Model.SpringTitles;

public interface SpringService {

	public void saveSpringContent(SpringTitles springTitles);

	public List<SpringMvc> getSprigList();

}
