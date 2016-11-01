package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Notification;

@Repository
public class NotificationRepoImpl implements NotificationRepo {
	
	@Autowired
	SqlSessionTemplate template;	
	
	final private String NAME_SPACE="whattodo.dao.NotificationMapper.";
	
	public int insertNoti(Notification noti) {
		String statement = NAME_SPACE+"insertNoti";
		return template.insert(statement,noti);
	}

	public List<Notification> selectAllNotification() {
		String statement=NAME_SPACE+"selectAllNotification";
		return template.selectList(statement);
	}

	public int countNoti() {
		String statement=NAME_SPACE+"countNotification";
		return template.selectOne(statement);
	}

	public int deleteNoti(int notiNo) {
		String statement=NAME_SPACE+"deleteNoti";
		return template.delete(statement, notiNo);
	}

}
