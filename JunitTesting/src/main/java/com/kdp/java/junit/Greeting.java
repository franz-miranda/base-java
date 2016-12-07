package com.kdp.java.junit;

public class Greeting {
	/**
	 * Agrega "Hello" a la cadena de texto introducida
	 * @param str
	 * @return string
	 */
	public String greet(String str) {
		if (str == null || str.length() ==0){
			throw new IllegalArgumentException();
		}
		return "Hello " + str;
	}
}
