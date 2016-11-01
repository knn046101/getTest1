package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Notification;
import com.whattodo.repo.NotificationRepo;

@Service
public class NotificationService implements NotificationInterface {
	
	@Autowired
	NotificationRepo nrepo;
	
	public int insertNoti(Notification noti) {
		return nrepo.insertNoti(noti);
	}

	public List<Notification> selectAllNotification() {
		return nrepo.selectAllNotification();
	}

	public int countNoti() {
		return nrepo.countNoti();
	}

	public void deleteNoti(int notiNo) {
		nrepo.deleteNoti(notiNo);
		
	}

}
