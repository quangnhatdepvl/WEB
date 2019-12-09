package model;

public class UserModel {
	private int user_id;
	private String user_name;
	private String user_password;
	private String user_fullname;
	private Role role;

	
	public UserModel() {
		
	}


	public UserModel(int user_id, String user_name, String user_password, String user_fullname,Role role) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_fullname = user_fullname;
		this.setRole(role);
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_password() {
		return user_password;
	}


	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}


	public String getUser_fullname() {
		return user_fullname;
	}


	public void setUser_fullname(String user_fullname) {
		this.user_fullname = user_fullname;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}


	
	
	
}
