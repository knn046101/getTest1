package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Tokens;

public interface TokenRepo {

	
	public int addClientToken(Tokens token); 

	public List<Tokens> selectAlltokens() ;
	
	public List<Tokens> selectAllowtokens() ;
	
	public List<Tokens> selectStudenttokens() ;
	
	public List<Tokens> selectBizmantokens() ;
	
	public List<Tokens> selectEtctokens() ;
	
	
	public int updateClientToken(Tokens token);
	

}
