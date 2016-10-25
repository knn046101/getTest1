package com.whattodo.repo;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Advertisement;

@Repository
public class AdvertisementRepoImpl implements AdvertisementRepo{

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.AdvertisementMapper.";
	public int insertAd(Advertisement ad) {
		String statement=NAME_SPACE+"insertAd";
		return template.insert(statement, ad);
	}

	public int updateAd(Advertisement ad) {
		String statement=NAME_SPACE+"updateAd";
		return template.update(statement, ad);
	}

	public int deleteAd(int adsNo) {
		String statement=NAME_SPACE+"deleteAd";
		return template.delete(statement, adsNo);
	}

	public List<Advertisement> selectAllAdvertisement() {
		String statement=NAME_SPACE+"selectAllAdvertisement";
		return template.selectList(statement);
	}

	public List<Advertisement> selectAdvertisement() {
		String statement=NAME_SPACE+"selectAdvertisement";
		return template.selectList(statement);
	}
	
	public int countAd(){
		String statement=NAME_SPACE+"countAdvertisement";
		return template.selectOne(statement);
	}

}
