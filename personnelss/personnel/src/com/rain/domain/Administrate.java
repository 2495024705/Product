package com.rain.domain;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Administrate {
	public final static String PHONE_PATTERN = "^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";

	public static void main(String[] args) {
		 String content = "18392924604";
			 
			     
			 
			     
			      System.out.println(content.matches(PHONE_PATTERN));
			   
	}
}
