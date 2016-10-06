package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.City;

@Repository
public class RegionRepoImpl implements RegionRepo{

	@Autowired
	SqlSessionTemplate template;

	final private String NAME_SPACE="whattodo.dao.RegionMapper."; 
	
	public List<City> getCity(String capital) {
		String statement = NAME_SPACE+"getCity";
		return template.selectList(statement, capital);
	}
	
}