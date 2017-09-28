package com.sceince.mapper;

import org.apache.ibatis.annotations.Update;

public interface UserMapper {
	
	@Update("UPDATE sc_user SET coin=coin+1 WHERE id=#{id}")
	public Integer updateUser(Integer id);
}
