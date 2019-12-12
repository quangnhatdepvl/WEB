package utils;

import java.util.Locale;
import java.util.ResourceBundle;

public class Muti {
	
	public static void main(String[] args) {
		System.out.println("Current Locale: " + Locale.getDefault());
		ResourceBundle mybundle = ResourceBundle.getBundle("language/messages");
		System.out.println("Say how are you in US English: " + mybundle.getString("how_are_you"));
		Locale.setDefault(new Locale("vi", "VN"));
		
		System.out.println("Current Locale: " + Locale.getDefault());
		mybundle = ResourceBundle.getBundle("language/messages");
		System.out.println("Say how are you in Malaysian VN language: " + mybundle.getString("how_are_you"));
		
		Locale local = new Locale("vi");
		System.out.println(local.getLanguage());
		 String referer = request.getHeader("Referer");
	        return "redirect:" + referer;
		
	}
}
