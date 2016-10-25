package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Advertisement;

public interface AdvertisementRepo {
	public int insertAd(Advertisement ad);
	public int updateAd(Advertisement ad);
	public int deleteAd(int adsNo);
	public List<Advertisement> selectAllAdvertisement();
	public List<Advertisement> selectAdvertisement();
	public int countAd();
}
