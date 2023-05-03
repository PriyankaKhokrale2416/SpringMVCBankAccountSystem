package com.services;

import java.util.List;

import javax.persistence.NamedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDao;
import com.dao.CustomerDaoImpl;
import com.models.Customer;
import com.models.CustomerDetails;

@Service
public class CustomerServicesImpl implements CustomerServices{

	@Autowired
	CustomerDao customerdao;
	
	@Transactional
	public void saveCustomerObj(Customer customer) {
		this.customerdao.saveCustomerObj(customer);
	}
	
	@Transactional
	public Customer getCustomerObj(int accno) {
		
		return customerdao.getCustomerObj(accno);
	}

	public List<Customer> getAllCustomers() {
		
		return this.customerdao.getAllCustomers();
	}
	
	public List<CustomerDetails> getAllCustomersDetails() {
		
		return this.customerdao.getAllCustomersDetails();
	}
	
	@Transactional
	public void removeCustomerObj(int accno) {
		
		this.customerdao.removeCustomerObj(accno);
		
	}
	
	@Transactional
	public void removeCustomerDetailsObj(int accno) {
		
		this.customerdao.removeCustomerDetailsObj(accno);
		
	}

	public Customer searchCustomer(int accno) {
		// TODO Auto-generated method stub
		return this.customerdao.searchCustomer(accno);
	}

	@Transactional
	public void saveCustomerTransactionDetails(CustomerDetails custD) {
		// TODO Auto-generated method stub
		this.customerdao.saveCustomerTransactionDetails(custD);
		
	}
	


	
	public CustomerDetails getDetailsOfCustomer(int accno) {
		// TODO Auto-generated method stub
		CustomerDetails c = this.customerdao.getDetailsOfCustomer(accno);
		return c;
	}

	
	
	
	
	

	

	
	
	

}

