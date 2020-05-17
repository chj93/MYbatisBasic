package sist.com.demo;

public class Main {
	
	public static void main(String[] args) {
		Super s=new Super();
		//s.execute();
		if(args[0].equals("»óÇö")) {
		s=new Sub();		
		}else {
		s=new SubSub();
		}
		
		s.execute();
	}

}
