package com.sceince.mapper;

import org.apache.ibatis.annotations.Insert;

import com.sceince.model.UserToken;

public interface UserTokenMapper {
	
	@Insert("INSERT INTO sc_user_token (`token`, `userId`, `createdTime`) " +
			   "VALUES (#{token}, #{userid}, #{createdtime})")
	public Integer saveUserToken(UserToken userToken);
}
