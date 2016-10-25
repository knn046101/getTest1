package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Tokens;

public interface TokenRepo {

	
	public int addClientToken(Tokens token); 

	public List<Tokens> selectAlltokens() ;
	
	public List<Tokens> selectAllowtokens() ;
	
	public int updateClientToken(Tokens token);
	

}
