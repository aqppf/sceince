package com.sceince.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sceince.comm.util.MsgUtil;
import com.sceince.mapper.UserTokenMapper;
import com.sceince.model.UserToken;
import com.sceince.service.UserService;
import com.sceince.service.UserTokenService;

@Service
public class UserTokenServiceImpl implements UserTokenService {
	
	@Autowired
	private UserTokenMapper userTokenMapper;
	
	@Autowired
	private UserService userservice;

	@Override
	@Transactional
	public Integer saveUserToken(UserToken userToken) {
		
		userToken.setCreatedtime( (int)(System.currentTimeMillis()/1000) );
		userToken.setToken(MsgUtil.MD5(userToken.getToken()+MsgUtil.Random()));
		
		int a = userTokenMapper.saveUserToken(userToken);
		
		try {
			userservice.updateUser();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
				
		return a;
	}

}
