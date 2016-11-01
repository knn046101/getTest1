package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Notification;

public interface NotificationRepo {
	public int insertNoti(Notification noti);
	public List<Notification> selectAllNotification();
	public int countNoti();
}
