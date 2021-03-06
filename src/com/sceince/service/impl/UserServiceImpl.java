package com.sceince.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sceince.mapper.UserMapper;
import com.sceince.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	public Integer updateUser() {
		
		userMapper.updateUser(8);
		
		return 8/0;
	}
	
	@Override
	@Async
	public void testAsync(String str) {
		
		System.out.println("start.......");
		
		try {
			Thread.sleep(60000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("end:ff" + str);
	}

}
