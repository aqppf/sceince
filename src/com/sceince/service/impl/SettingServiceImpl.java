package com.sceince.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sceince.dto.Test;
import com.sceince.mapper.SettingMapper;
import com.sceince.model.Setting;
import com.sceince.service.SettingService;

@Service
public class SettingServiceImpl implements SettingService {
	
	@Autowired
	private SettingMapper settingMapper;
	
	@Override
	public Setting getSetting(Integer id) {
		return settingMapper.getSetting(id);
	}
	
	@Override
	public Setting getSettingByName(String name) {
		return settingMapper.getSettingByname(name);
	}

	@Override
	public Integer saveSetting(Test test) {
		
		settingMapper.saveSetting(test);
		
		return 0;
	}

}
