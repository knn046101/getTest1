package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Benefit;
import com.whattodo.repo.BenefitRepo;

@Service
public class BenefitService implements BenefitInterface{

	@Autowired
	BenefitRepo brepo;
	public void insertBenifit(Benefit benefit) {
		brepo.insertBenifit(benefit);
	}

	public void insertMembersBenefit(String benefitNo, String id){
		brepo.insertMembersBenefit(benefitNo, id);
	}
	
	public void updateBenifit(Benefit benefit) {
		brepo.updateBenifit(benefit);
	}

	public void deleteBenefit(String benefitNo) {
		brepo.deleteBenefit(benefitNo);
	}

	public List<Benefit> selectAllBenefit() {
		return brepo.selectAllBenefit();
	}

	public List<Benefit> selectBenefitByMemberId(String id) {
		return brepo.selectBenefitByMemberId(id);
	}
}
