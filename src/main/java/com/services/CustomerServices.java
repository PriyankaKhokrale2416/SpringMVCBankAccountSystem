package com.services;

import java.util.List;
import com.models.Customer;
import com.models.CustomerDetails;

public interface CustomerServices {
	
	
	public void saveCustomerObj(Customer customer);
	public Customer getCustomerObj(int accno);
	public List<Customer> getAllCustomers(); 
	public List<CustomerDetails> getAllCustomersDetails(); 

	public void removeCustomerObj(int accno);
	public void removeCustomerDetailsObj(int accno);


	public List<Customer> searchCustomer(int accno);
	
	public void saveCustomerTransactionDetails(CustomerDetails custD);
	
	public CustomerDetails getDetailsOfCustomer(int accno);
	

	

}
