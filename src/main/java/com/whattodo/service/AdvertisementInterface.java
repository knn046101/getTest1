package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Advertisement;

public interface AdvertisementInterface {
	public void insertAd(Advertisement ad);
	public void updateAd(Advertisement ad);
	public void deleteAd(int adsNo);
	public List<Advertisement> selectAllAdvertisement();
	public Advertisement selectAdvertisement(int adsNo);
}
