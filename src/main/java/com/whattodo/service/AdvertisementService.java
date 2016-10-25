package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Advertisement;
import com.whattodo.repo.AdvertisementRepo;

@Service
public class AdvertisementService implements AdvertisementInterface{

	@Autowired
	AdvertisementRepo adrepo;
	public int insertAd(Advertisement ad) {
		return adrepo.insertAd(ad);
	}

	public void updateAd(Advertisement ad) {
		adrepo.updateAd(ad);
	}

	public void deleteAd(int adsNo) {
		adrepo.deleteAd(adsNo);
	}

	public List<Advertisement> selectAllAdvertisement() {
		return adrepo.selectAllAdvertisement();
	}

	public List<Advertisement> selectAdvertisement() {
		return adrepo.selectAdvertisement();
	}
	
	public int countAd(){
		return adrepo.countAd();
	}
}
