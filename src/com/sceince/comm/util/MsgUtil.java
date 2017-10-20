package com.sceince.comm.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MsgUtil {
	
	public static String MD5(String str) {
		
		byte[] data = null;
		
		try {
			MessageDigest msgDigest = MessageDigest.getInstance("MD5");
			msgDigest.update(str.getBytes());
			data = msgDigest.digest();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return byteArrayToHexStr(data);
	}
	
	/**
	 * Ëæ»úÊý
	 * @return
	 */
	public static String Random() {
		
		double rand =  Math.random() * 1000;
		return String.valueOf((int)rand);
	}
	
	public static String byteArrayToHexStr(byte byteArray[]) {

        StringBuilder buffer = new StringBuilder(byteArray.length * 2);
        for (int i = 0; i < byteArray.length; i++) {
            if (((int) byteArray[i] & 0xff) < 0x10)
                buffer.append("0");
            buffer.append(Integer.toHexString(byteArray[i]&0xFF));
        }
        return buffer.toString();
    }

}
