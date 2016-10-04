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
	public void insertAd(Advertisement ad) {
		adrepo.insertAd(ad);
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

	public Advertisement selectAdvertisement(int adsNo) {
		return adrepo.selectAdvertisement(adsNo);
	}

}
