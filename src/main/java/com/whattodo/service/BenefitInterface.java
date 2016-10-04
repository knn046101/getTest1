package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Benefit;

public interface BenefitInterface {
	public void insertBenifit(Benefit benefit);
	public void insertMembersBenefit(String benefitNo, String id);
	public void updateBenifit(Benefit benefit);
	public void deleteBenefit(String benefitNo);
	public List<Benefit> selectAllBenefit();
	public List<Benefit> selectBenefitByMemberId(String id);
	// 조인
}
