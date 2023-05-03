package com.dao;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.models.Customer;
import com.models.CustomerDetails;
import javax.persistence.criteria.CriteriaQuery;


@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
	HibernateTemplate hibernatetemplate;
	
	 @Autowired
	    private SessionFactory sessionFactory;
	
	
	public void saveCustomerObj(Customer customer) {
		// TODO Auto-generated method stub
		
		this.hibernatetemplate.saveOrUpdate(customer);	
		
	}
	
	public Customer getCustomerObj(int accno) {
		return this.hibernatetemplate.get(Customer.class, accno);
	}

	
	public List<Customer> getAllCustomers() {
		List<Customer> cust = this.hibernatetemplate.loadAll(Customer.class);

		return cust;
	}
	
	public List<CustomerDetails> getAllCustomersDetails() {
		List<CustomerDetails> cust = this.hibernatetemplate.loadAll(CustomerDetails.class);

		return cust;
	}

	public void removeCustomerObj(int accno) {
		// TODO Auto-generated method stub
		
		Customer c = this.hibernatetemplate.load(Customer.class, accno);
		this.hibernatetemplate.delete(c);
		
	}
	
	public void removeCustomerDetailsObj(int accno) {
		// TODO Auto-generated method stub
		
		CustomerDetails cd = this.hibernatetemplate.load(CustomerDetails.class, accno);
		this.hibernatetemplate.delete(cd);
		
	}

	public Customer searchCustomer(int accno) {
		// TODO Auto-generated method stub
		return this.hibernatetemplate.get(Customer.class, accno);
		
	}


	public void saveCustomerTransactionDetails(CustomerDetails custD) {
		// TODO Auto-generated method stub
		
		this.hibernatetemplate.saveOrUpdate(custD);
		
	}

	public CustomerDetails getDetailsOfCustomer(int accno) {
		return this.hibernatetemplate.get(CustomerDetails.class, accno);
	}



	
	

	

	

}
