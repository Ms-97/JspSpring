package test.java1;

public class Test01_파라미터 {
	public static void main(String[] args) {
		
		String data = "test"; 
		
		if(containsOr(data,"te","sss","sssddfdk","dkfdkfdf")) {
			System.out.println("true");
		}
		
		if(containsOr(data,"te","s1")) {
			System.out.println("true");
		}
		
		StringBuffer sb = methodName("파라미터", StringBuffer.class);
//		List list = methodName("파라미터", List.class);
	}
	
	public static <T> T methodName(String target, Class<T> clazz) {
//		return (T) 결과값; 
		return null;
	}
	public static boolean containsOr(String target, String ... compares) {
		if(target==null || compares == null) { return false; }
		for(String compare : compares) {
			if(target.contains(compare)) {
				return true; 
			}
		}
		return false; 
	}
	
	
	
	
}
