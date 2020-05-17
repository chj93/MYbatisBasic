package sist.com.model;

public class People {
	private String name;
	private int age;
	private Process process;
	public People() {
		super();
	}
	public People(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}	
	public People(String name, int age, Process process) {
		super();
		this.name = name;
		this.age = age;
		this.process = process;
	}
	public Process getProcess() {
		return process;
	}
	public void setProcess(Process process) {
		this.process = process;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "People [name=" + name + ", age=" + age + "]";
	}
	
	

}
