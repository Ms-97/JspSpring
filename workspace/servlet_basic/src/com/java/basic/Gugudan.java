package com.java.basic;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;


public class Gugudan {

	public static void main(String[] args) {
		
		Gugudan main = new Gugudan();
		
/*		
		String result = "";
		
		//단수반복
		for(int dan=2; dan<10; dan++) {
			//System.out.println(dan+"단");
			//result += dan+"단\n";
			main.view_dan(dan);
			
			//곱수반복
			for(int gop=1; gop<10;gop++) {
				
				//System.out.println(dan + " * " + gop + " = " + (dan*gop) );
				//result += dan + " * " + gop + " = " + (dan*gop) + "\n";
				main.view_result(dan, gop);
			}
			
			//System.out.println();
			//result += "\n";
			main.view_space();
		}
		
		
		//출력
		System.out.println(result);
		
*/
		main.gugudan();
	}
	
		
		
	private void gugudan(){
		Map<String,Integer> data = inputData();
		
		//입력
		int danNum = data.get("dan");
		int gopNum = data.get("gop");
		
		// 단수반복
		for (int dan=2; dan < danNum+1; dan++) {
			view_dan(dan);

			// 곱수반복
			for (int gop = 1; gop < gopNum+1; gop++) {
				view_result(dan, gop);
			}
			view_space();
		}
		
		/*
		// 단수반복
				for (int dan = 2; dan < 10; dan++) {
					view_dan(dan);

					// 곱수반복
					for (int gop = 1; gop < 10; gop++) {
						view_result(dan, gop);
					}
					view_space();
				}
		 */
	}
	
	private Map<String,Integer> inputData(){
		
		Map<String, Integer> data = new HashMap<String,Integer>();
		
		Scanner scann = new Scanner(System.in);
		System.out.print("단수를 입력하시오._");
		data.put("dan",Integer.parseInt(scann.nextLine()));		
		
		System.out.print("곱수를 입력하시오._");
		data.put("gop",Integer.parseInt(scann.nextLine()));
		
		return data;
	}
	
	private void view_dan(int dan){
		System.out.println(dan+"단\n");
	}
	private void view_result(int dan, int gop) {
		System.out.println(dan + " * " + gop + " = " + (dan*gop) );
	}
	private void view_space() {
		System.out.println();
	}

}












