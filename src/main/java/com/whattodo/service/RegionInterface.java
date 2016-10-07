package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.City;

public interface RegionInterface {
	public List<City> getCity(String capital);
}
