package com.whattodo.repo;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Admin;

@Repository
public class AdminRepoImpl implements AdminRepo {

	@Autowired
	SqlSessionTemplate template;
	private static Logger logger = LoggerFactory.getLogger(AdminRepoImpl.class);
	
	final private String NAME_SPACE="whattodo.dao.AdminMapper."; 
	
	public Admin getAdmin(String adminId) {
		
		String statement = NAME_SPACE+"getAdmin";
		logger.trace("adminId : {} : ", statement);
		return template.selectOne(statement, adminId);
	}
}