package model;

public class UserModel {
	private String username;
	private String password;
	private String fullname;
	private int age;
	private String address;
	
	public UserModel() {
		
	}
	public UserModel(String username, String password, String fullname, int age, String address) {
		super();
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.age = age;
		this.address = address;
	}
	
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getFullname() {
		return fullname;
	}
	public int getAge() {
		return age;
	}
	public String getAddress() {
		return address;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
