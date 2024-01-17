package com.premzjbk.JAVA.BY.KIRAN.FIRST.PROJECT.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Contact {

	private String full_name;
	@Id
	private String email;
	private String phone_number;
	private String address;

	public Contact(String full_name, String email, String phone_number, String address) {
		super();
		this.full_name = full_name;
		this.email = email;
		this.phone_number = phone_number;
		this.address = address;
	}

	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Contact [full_name=" + full_name + ", email=" + email + ", phone_number=" + phone_number + ", address="
				+ address + "]";
	}

}
