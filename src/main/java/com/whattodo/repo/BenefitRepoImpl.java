package com.whattodo.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Benefit;

@Repository
public class BenefitRepoImpl implements BenefitRepo{

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.BenefitMapper.";
	
	public int insertBenifit(Benefit benefit) {
		String statement=NAME_SPACE+"insertBenefit";
		return template.insert(statement, benefit);
	}

	public int insertMembersBenefit(String benefitNo, String id) {
		String statement=NAME_SPACE+"insertMembersBenefit";
		Map <String, Object> map = new HashMap<String, Object>();
		map.put("benefitNo", benefitNo);
		map.put("id", id);
		return template.insert(statement, map);
	}
	
	public int updateBenifit(Benefit benefit) {
		String statement=NAME_SPACE+"updateBenifit";
		return template.update(statement, benefit);
	}

	public int deleteBenefit(String benefitNo) {
		String statement=NAME_SPACE+"deleteBenefit";
		return template.delete(statement, benefitNo);
	}

	public List<Benefit> selectAllBenefit() {
		String statement=NAME_SPACE+"selectAllBenefit";	
		return template.selectList(statement);
	}

	public List<Benefit> selectBenefitByMemberId(String id) {
		String statement=NAME_SPACE+"selectBenefitByMemberId";	
		return template.selectList(statement, id);
	}

}
