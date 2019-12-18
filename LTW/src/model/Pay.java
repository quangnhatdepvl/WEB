package model;

import java.util.ArrayList;
import java.util.Date;

public class Pay {

	
	private int user_id;
	private ArrayList<PhoneModel> listPhone;
	private boolean status;
	private Date dateCreate;
	
	public Pay() {
		
	}

	
	public Pay(int user_id, ArrayList<PhoneModel> listPhone, boolean status, Date dateCreate) {
		super();
		
		this.user_id = user_id;
		this.listPhone = listPhone;
		this.status = status;
	
		this.dateCreate = dateCreate;
	}


	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public ArrayList<PhoneModel> getListPhone() {
		return listPhone;
	}

	public void setListPhone(ArrayList<PhoneModel> listPhone) {
		this.listPhone = listPhone;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}


	
	
	
}
