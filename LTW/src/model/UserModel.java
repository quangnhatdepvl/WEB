package model;

import java.util.ArrayList;

public class UserModel {
	private int user_id;
	private String user_name;
	private String user_password;
	private String user_fullname;
	private String phone;
	private String email;
	private String address;
	private ArrayList<Role> roles;
	
	public UserModel() {
		
	}

	public UserModel(int user_id, String user_name, String user_password, String user_fullname, String phone,
			String email, String address, ArrayList<Role> roles) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_fullname = user_fullname;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.roles = roles;
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


	public ArrayList<Role> getRoles() {
		return roles;
	}


	public void setRoles(ArrayList<Role> roles) {
		this.roles = roles;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserModel [user_id=" + user_id + ", user_name=" + user_name + ", user_password=" + user_password
				+ ", user_fullname=" + user_fullname + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", roles=" + roles + "]";
	}

	


	

	
	
	
}
