package com.boxuegu.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



public class MD5AndSHA1 {







	public static String GetMD5String(String message){
		try {
			StringBuffer buffer = new StringBuffer();
			MessageDigest md=MessageDigest.getInstance("MD5");
			byte[] reslut=md.digest(message.getBytes());
			for(byte b:reslut){
				int number=b&0xff;
				String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    buffer.append("0");
                }
                buffer.append(str);
			}
			return buffer.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return "";
		} 
	}
	
	public static String Getsha1String(String message){
		try {
			StringBuffer buffer = new StringBuffer();
			MessageDigest md=MessageDigest.getInstance("SHA1");
			byte[] reslut=md.digest(message.getBytes());
			for(byte b:reslut){
				int number=b&0xff;
				String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    buffer.append("0");
                }
                buffer.append(str);
			}
			return buffer.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return "";
		} 
	}

}
