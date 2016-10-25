package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Tokens;

public interface TokenInterface {

	public void addClientToken(Tokens token); 

	public List<Tokens> selectAlltokens() ;
	
	public List<Tokens> selectAllowtokens() ;
	
	public void updateClientToken(Tokens token);

}
