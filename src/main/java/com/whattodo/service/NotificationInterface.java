package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Notification;

public interface NotificationInterface {
	public int insertNoti(Notification noti);
	public List<Notification> selectAllNotification();
	public int countNoti();
	public void deleteNoti(int notiNo);
}
