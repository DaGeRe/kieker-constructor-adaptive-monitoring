package defaultpackage;

class Other {
	public void test(){}
}

public class NormalDependency {

	public static void main(String args[]){
		new NormalDependency().executeMe();
		new NormalDependency().intReturnMethod();
		new Other().test();	
	}
	public void executeMe() {
		child1();
	}

	public void unusedMethod() {}

	public void child1(){}

	public int intReturnMethod(){return 5;}
}
