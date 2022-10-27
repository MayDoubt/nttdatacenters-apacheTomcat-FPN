package com.nttdata.tomcat;

import java.util.Random;

/**
 * Formación - Apache Tomcat - JSP - Taller
 * 
 * Primer JSP
 * 
 * @author Fernando Pérez Nieto
 *
 */
public class NTTDataJSP {

	private static Random rand = new Random();
	
	/**
	 * Private constructor
	 */
	private NTTDataJSP() {
		
	}
	
	/**
	 * Hello by JSP
	 * 
	 * @param name
	 * @return String
	 */
	public static String helloNTTData(final String name) {
		return "Bienvenid@s al proyecto FP DUAL " + name;
	}
	
	/**
	 * Generate random attendance
	 * 
	 * @return String
	 */
	public static String attendance() {
		
		int rValue = rand.nextInt(10);
		return (rValue < 9 )?"Presente":"No contesta";
	}
}
 