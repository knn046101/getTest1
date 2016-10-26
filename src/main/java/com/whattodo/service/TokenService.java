package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Tokens;
import com.whattodo.repo.TokenRepo;
@Service
public class TokenService implements TokenInterface{

	
	@Autowired
	TokenRepo trepo;
	
	
	public void addClientToken(Tokens token) {
		
		trepo.addClientToken(token);
		
		
	}

	public List<Tokens> selectAlltokens() {
		// TODO Auto-generated method stub
		List<Tokens> list = trepo.selectAlltokens();
		
		return list;
	}

	public List<Tokens> selectAllowtokens() {
		// TODO Auto-generated method stub
		List<Tokens> list = trepo.selectAllowtokens();
		
		return list;
	}

	public void updateClientToken(Tokens token) {
		// TODO Auto-generated method stub
		trepo.updateClientToken(token);
	}

	public List<Tokens> selectStudenttokens() {
		List<Tokens> list = trepo.selectStudenttokens();
		
		return list;
	}

	public List<Tokens> selectBizmantokens() {
		List<Tokens> list = trepo.selectBizmantokens();
		
		return list;
	}

	public List<Tokens> selectEtctokens() {
		List<Tokens> list = trepo.selectEtctokens();
		
		return list;
	}



}
