package com.models;

import java.io.Serializable;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Entity@Component
public class Customer {
	


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id
	private int accountNumber;
	

	private long customerId;
	
	
	private String typeOfAccount;

	private String name;
	
	private String address;
	
	private long phoneNo;
	
	
	private String email;
	
	private String nationality;
    
	private String gender;
	
	private String dateOfBirth;
	

	private String panNo;
	
	private long adharNo;
	
	private String password;
	
	@Autowired
	@OneToOne(fetch = FetchType.EAGER, mappedBy = "customer", cascade = CascadeType.ALL)
	private CustomerDetails customerDetails;
	

	
	public Customer() {
		// TODO Auto-generated constructor stub
	}


	public Customer(long customerId, String typeOfAccount, String name, String address, long phoneNo, String email, String nationality, String gender,
			String dateOfBirth, String panNo, long adharNo, int accountNumber, String password) {
		super();
		
		String d = String.valueOf(panNo);
		String newd = d.substring(5, 8);
		customerId = Long.parseLong(newd) + 120012;
		this.customerId = customerId; 
		
		this.typeOfAccount=typeOfAccount;
		this.name = name;
		this.address = address;
		this.phoneNo = phoneNo;
		this.email = email;
		this.nationality = nationality;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.panNo = panNo;
		this.adharNo = adharNo;
		
		String str = String.valueOf(adharNo);
		String str2 = str.substring(2, 7);
		accountNumber = Integer.parseInt(str2)+10000000;
		this.accountNumber = accountNumber;
		
		String s = String.valueOf(adharNo);
		password = name.substring(0, 4) + s.substring(0, 4);
		this.password = password;
		
		
	}

	public String getTypeOfAccount() {
		return typeOfAccount;
	}


	public void setTypeOfAccount(String typeOfAccount) {
		this.typeOfAccount = typeOfAccount;
	}


	public long getCustomerId() {
		String d = String.valueOf(panNo);
		String newd = d.substring(5, 8);
		Long customerId = Long.parseLong(newd) + 120012;
	     return customerId;
	}


	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public long getPhoneNo() {
		return phoneNo;
	}


	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getNationality() {
		return nationality;
	}


	public void setNationality(String nationality) {
		this.nationality = nationality;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public String getPanNo() {
		return panNo;
	}


	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}


	public long getAdharNo() {
		return adharNo;
	}


	public void setAdharNo(long adharNo) {
		this.adharNo = adharNo;
	}
	
	
	public int getAccountNumber() {
		
		String str = String.valueOf(adharNo);
		String str2 = str.substring(2, 7);
		int accountNumber = Integer.parseInt(str2)+10000000;
		return accountNumber;
	}


	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	
	public String getPassword() {
		String s = String.valueOf(adharNo);
		String s1 = "@";
		password = name.substring(0, 4) + s1 + s.substring(0, 3);
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	
	
	
	public CustomerDetails getCustomerDetails() {
		return customerDetails;
	}


	public void setCustomerDetails(CustomerDetails customerDetails) {
		this.customerDetails = customerDetails;
	}


	@Override
	public String toString() {
		return "Customer [accountNumber=" + accountNumber + ", customerId=" + customerId + ", typeOfAccount="
				+ typeOfAccount + ", name=" + name + ", address=" + address + ", phoneNo=" + phoneNo + ", email="
				+ email + ", nationality=" + nationality + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth
				+ ", panNo=" + panNo + ", adharNo=" + adharNo + ", password=" + password + "]";
	}


	


	
	
	

}
