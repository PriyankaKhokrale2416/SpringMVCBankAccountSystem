package com.models;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Entity@Component
public class CustomerDetails   {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	

	
	//@Column(name="caccountNumber",nullable=false)
	//private long caccountNumber;
	
	@Id
	@Column(name="caccountNumber",nullable=false, insertable = false, updatable = false)
	private int caccountNumber;
	private float wamount;
	private float damount;
	private float balance = 20000.0f;	
	
	
	@Autowired 	
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "caccountNumber", foreignKey = @ForeignKey(name = "FK_cust_accountnumber"))
	private Customer customer;
		
	
	public CustomerDetails() {
		// TODO Auto-generated constructor stub
		int caccountNumber;
		float wamount;
		float damount;
		float balance = 20000.0f;
	}

	public CustomerDetails(int caccountNumber, float wamount, float damount, float balance) {
		super();
		this.caccountNumber = caccountNumber;
		this.wamount = wamount;
		this.damount = damount;
		this.balance = balance;
	}

	public float checkbalanceAfterWithdrawal(float wamount)
	{
		this.wamount = wamount;
		balance = balance - wamount;
		return balance;	
	}
	
	public float checkbalanceAfterDeposit(float damount)
	{
		this.damount = damount;
		balance = balance + damount;
		return balance;	
	}
	
	public int getCaccountNumber() {
		return caccountNumber;
	}

	public void setCaccountNumber(int caccountNumber) {
		this.caccountNumber = caccountNumber;
	}

	public float getWamount() {
		return wamount;
	}

	public void setWamount(float wamount) {
		this.wamount = wamount;
	}

	public float getDamount() {
		return damount;
	}

	public void setDamount(float damount) {
		this.damount = damount;
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public float transaction()
	{
		String thread1 = Thread.currentThread().getName();
		
		if(thread1 == "t1")
		{
			balance = checkbalanceAfterWithdrawal(wamount);
		}
		else if(thread1 == "t2")
		{
			balance = checkbalanceAfterDeposit(damount);
		}
		return balance;
	}
	
	public void run() {
		
		transaction();
		
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
		
	}

	@Override
	public String toString() {
		return "CustomerDetails [caccountNumber=" + caccountNumber + ", wamount=" + wamount + ", damount="
				+ damount + ", balance=" + balance + "]";
	}

	
	
	
	
	
	

}

