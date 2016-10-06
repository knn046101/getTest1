package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.City;

public interface RegionRepo {
	public List<City> getCity(String capital);
}
