package com.sceince.dto;

public class Test {
	private Integer id;
	private String name;
	private Integer age;
	private Integer hynix;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	public String toString() {
		return id +"::"+ name +"::" + age;
	}
	public Integer getHynix() {
		return hynix;
	}
	public void setHynix(Integer hynix) {
		this.hynix = hynix;
	}
	
}
