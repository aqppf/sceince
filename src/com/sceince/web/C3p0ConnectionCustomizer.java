package com.sceince.web;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.AbstractConnectionCustomizer;

public class C3p0ConnectionCustomizer extends AbstractConnectionCustomizer {
	
	public void onAcquire(Connection c, String parentDataSourceIdentityToken) throws SQLException {
		
		System.out.println("connection::" + c.getAutoCommit());
	}
	
	
	public void onCheckIn(Connection c, String parentDataSourceIdentityToken) throws SQLException {
		
		//System.out.println("check in::" + c.getAutoCommit());
	}
}
