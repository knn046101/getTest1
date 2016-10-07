package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.City;
import com.whattodo.repo.RegionRepo;

@Service
public class RegionService implements RegionInterface{

	@Autowired
	RegionRepo rrepo;
	public List<City> getCity(String capital) {
		return rrepo.getCity(capital);
	}
	
}
