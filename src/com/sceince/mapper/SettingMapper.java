package com.sceince.mapper;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

import com.sceince.dto.Test;
import com.sceince.mapper.sql.SettingSqlProvider;
import com.sceince.model.Setting;

@MapperScan
public interface SettingMapper {
	
	@Select("select * from sc_setting where id=#{id}")
	@Results({ @Result(column="test_abc", property="test") })
	public Setting getSetting(Integer id);
	
	@Select("select * from sc_setting where name=#{name}")
	@Results({ @Result(column="test_abc", property="test") })
	public Setting getSettingByname(String name);
	
	@InsertProvider(type = SettingSqlProvider.class, method = "saveSetting")
	public Integer saveSetting(@Param("test")Test test);
}
