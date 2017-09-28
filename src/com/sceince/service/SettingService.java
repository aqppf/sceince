package com.sceince.service;

import com.sceince.dto.Test;
import com.sceince.model.Setting;

public interface SettingService {
	
	public Setting getSetting(Integer id);
	public Setting getSettingByName(String name);
	public Integer saveSetting(Test test);
}
