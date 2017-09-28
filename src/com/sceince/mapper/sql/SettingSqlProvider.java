package com.sceince.mapper.sql;

public class SettingSqlProvider {
	
	public String saveSetting() {
		return "INSERT INTO sc_setting (`name`, `value`, `test_abc`) " +
			   "VALUES (#{test.name}, #{test.age}, '888')";
	}
}
