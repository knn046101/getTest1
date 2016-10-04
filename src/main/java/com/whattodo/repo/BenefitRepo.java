package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Benefit;

public interface BenefitRepo {
	public int insertBenifit(Benefit benefit);
	public int insertMembersBenefit(String benefitNo, String id);
	public int updateBenifit(Benefit benefit);
	public int deleteBenefit(String benefitNo);
	public List<Benefit> selectAllBenefit();
	public List<Benefit> selectBenefitByMemberId(String id);
	// 조인
}
