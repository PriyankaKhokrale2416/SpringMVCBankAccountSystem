package com.controller;

import java.util.List;

import javax.persistence.NamedQuery;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.models.Customer;
import com.models.CustomerDetails;
import com.services.CustomerServices;

@Controller
public class HomeController {
	@Autowired
	CustomerServices customerservices;

	@Autowired
	CustomerDetails custDetails;
	
	@Autowired
	Customer customer;

	@RequestMapping("/")
	public String home() {
		return "homeview";
	}

	@RequestMapping("homeviewpage")
	public String homeview(Model m) {
		m.addAttribute("msg2", "Data sent securely for verification, check mails for further procedure...");
		return "homeview";
	}

	@RequestMapping("/login")
	public String login() {
		return "loginview";
	}

	@RequestMapping("/createAccount")
	public String createAcc() {
		return "createaccount";
	}

	@RequestMapping(path = "/savecustomerdata", method = RequestMethod.POST)
	public String accountCreation(@ModelAttribute("customer") Customer customer, CustomerDetails cd, Model m) {

		int ac = customer.getAccountNumber();
		customer.setAccountNumber(ac);
		m.addAttribute("msg1", "Check the details and proceed further...");
		m.addAttribute("accno", ac);
		System.out.println("ac no : "+ac);
		m.addAttribute("pd", customer.getPassword());
		long id = customer.getCustomerId();
		customer.setCustomerId(id);
		m.addAttribute("cd", id);
		
		
		CustomerDetails custD = new CustomerDetails(ac, 0, 0, 20000);
		custD.setCaccountNumber(ac);
		customer.setCustomerDetails(custD);
		custD.setCustomer(customer);
		
		System.out.println(customer);
		System.out.println(custD);
		
		//custDetails.setCustomer(customer);
		//customer.setCustomerDetails(custDetails);
		m.addAttribute("Customer", customer);
		m.addAttribute("CustomerDetails", custD);
		this.customerservices.saveCustomerObj(customer);
		this.customerservices.saveCustomerTransactionDetails(custD);
		
		System.out.println("Customer : "+customer);
		System.out.println("CustomerDetails: "+custD);

		
		
		
//		

//		System.out.println(custDetails);

		return "confirmationpage";

	}

	@RequestMapping(path = "/accountDetails")
	public String getAccountDetails() {

		return "accountdetails";

	}

	@RequestMapping("/updatedetails/{cid}")
	public String updateDetails(@PathVariable("cid") int id, Model m) {

		Customer c = this.customerservices.getCustomerObj(id);

		m.addAttribute("Customer", c);

		return "updateform";
	}
//	public String updateStudent(@PathVariable ("pid") int id, Model m) {
//		Student s = this.studentService.getStudentObj(id);
//		m.addAttribute("stdnt", s);
//		return "updateForm";
//	}
//		

	@RequestMapping(path = "/getdetailsafterlogin", method = RequestMethod.POST)
	public String getDetailsAfterLogin(
			@RequestParam("accountNumber") int accno,
			@RequestParam("customerId") long custid, 
			@RequestParam("password") String pd,

			Customer customer, CustomerDetails CustDetails,

			Model m) 
	{
		System.out.println("acc no " + accno + " and password " + pd);

		try {
			
			Customer cust = customerservices.getCustomerObj(accno);
			System.out.println("acc no 2 " + cust.getAccountNumber() + " and password 2 " + cust.getPassword());
			System.out.println("customer id " + custid);// customerid
			CustomerDetails CustDetails1 = this.customerservices.getDetailsOfCustomer(cust.getAccountNumber());
			System.out.println(CustDetails1);// customer details
			float balance = CustDetails1.getBalance();
			m.addAttribute("CustDetails", CustDetails1);
			m.addAttribute("Customer", cust);
			m.addAttribute("balance", balance);

			System.out.println("customer " + cust);// customer

			if (cust.getAccountNumber() == accno && cust.getPassword().equals(pd) && custid == cust.getCustomerId()&&custid!=120012)

			{
				Customer cust1 = customerservices.getCustomerObj(accno);
				CustomerDetails CustDetails2 = this.customerservices.getDetailsOfCustomer(cust.getAccountNumber());


				System.out.println(CustDetails1);// customer details
				m.addAttribute("CustDetails", CustDetails1);
				m.addAttribute("Customer", cust);
				System.out.println("customer " + cust);// customer
				m.addAttribute("msg", "Welcome to the bank");
				m.addAttribute("customerId1", custid);
				m.addAttribute("customerAcNo", accno);
				m.addAttribute("password1", pd);
				m.addAttribute("bal", CustDetails2.getBalance());


				return "getAccountDetailsAfterLogin";

			}
			else if (accno == 10099999 && custid == 120012 && pd.equals("Admi@999")) {
				System.out.println(accno+ "accno");
				System.out.println(custid+ "custd");
				System.out.println(pd+ "pd");

				Customer c = this.customerservices.getCustomerObj(accno);
				CustomerDetails cd = this.customerservices.getDetailsOfCustomer(accno);
				//float newBalance = 1000000;
				//cd.setBalance(newBalance);
				this.customerservices.saveCustomerTransactionDetails(cd);
				CustomerDetails cd2 = this.customerservices.getDetailsOfCustomer(accno);


				c.setCustomerId(custid);
				m.addAttribute("CustomerId", custid);
				m.addAttribute("CustDetails", cd2);
				m.addAttribute("Customer", c);

				m.addAttribute("accno", accno);


				return "getAdminLogin";
			} 
			
			else if (cust.getAccountNumber()!=accno) {
				m.addAttribute("msg", "Wrong Account Number, please enter valid credentials");

				return "errormsg";

			} else if (cust.getPassword() != pd&&custid!=120123) {
				m.addAttribute("msg", "Wrong Password, please enter valid credentials");

				return "errormsg";

			} else if (custid == cust.getCustomerId()&&custid!=120123) {
				m.addAttribute("msg", "Wrong Customer Id, please enter valid credentials");

				return "errormsg";

			} else {
				m.addAttribute("msg", "please enter valid credentials");

				return "errormsg";
			}

			
		}catch(Exception e)
		{
			m.addAttribute("msg", "Invalid credentials, please try again..");
			return "errormsg";

		}
		
		
	}

	@RequestMapping(path = "/savecustomerdataAfterUpdate", method = RequestMethod.POST)
	public String UpdateInfo(@ModelAttribute("customer") Customer customer, CustomerDetails cd, Model m) {

		long ac = customer.getAccountNumber();
		m.addAttribute("msg1", "Check the details and proceed further...");
		m.addAttribute("accno", ac);
		m.addAttribute("pd", customer.getPassword());
		long id = customer.getCustomerId();
		System.out.println(id + "cust id");
		customer.setCustomerId(id);
		m.addAttribute("cd", id);
		m.addAttribute("Customer", customer);
		this.customerservices.saveCustomerObj(customer);
		// CustomerDetails custD = new CustomerDetails(0, 0, 20000);

		// custD.setCustomer(customer);
		// customer.setCustomerDetails(custD);
		System.out.println(customer);
		// System.out.println(custD);
		// this.customerservices.saveCustomerTransactionDetails(custD);
//		

//		System.out.println(custDetails);

		return "confirmationpage";

	}

	@RequestMapping(path = "/makepayment/{accno}", method = RequestMethod.GET)
	public String transferMoney(@PathVariable("accno") int accountNumber, CustomerDetails custD, Model m) {

		m.addAttribute("customerDetails", custD);
		return "transfer";
	}
	
	
	@RequestMapping(path = "/deposit/{accno}", method = RequestMethod.GET)
	public String depositAmt(
			@PathVariable("accno") int accountNumber, 
			
			CustomerDetails custD, Model m) {

		m.addAttribute("customerDetails", custD);
		return "depositAmount";
	}

	@RequestMapping(path = "/makepayment/updateBalanceAfterTransaction", method = RequestMethod.POST)
	public String updateBalance(
			@RequestParam("caccountnumber") int accountNumber,
			@RequestParam("wamount") float withdrawamount, 
			
			CustomerDetails CustomerD, Model m) {

		m.addAttribute("acccno", accountNumber);
		m.addAttribute("withdrawamt", withdrawamount);
		m.addAttribute("balance", CustomerD.getBalance());

		CustomerDetails cd = this.customerservices.getDetailsOfCustomer(accountNumber);
		cd.setWamount(withdrawamount);
		float balance2 = cd.getBalance() - withdrawamount;
		
		cd.setBalance(balance2);
		
		m.addAttribute("balance2", balance2);


		Customer customer = this.customerservices.getCustomerObj(accountNumber);
		customer.setCustomerDetails(cd);
		cd.setCustomer(customer);
		String name = customer.getName();
		m.addAttribute("nm", name);
		this.customerservices.saveCustomerTransactionDetails(cd);
		this.customerservices.saveCustomerObj(customer);

		System.out.println(cd);
		System.out.println(customer);

		return "updatebalance";

	}
	
	@RequestMapping(path = "/deposit/updateBalanceAfterDeposit", method = RequestMethod.POST)
	public String updateAfterDeposit(
			@RequestParam("caccountnumber") int accountNumber,
			@RequestParam("damount") float depositAmount, 
			
			CustomerDetails CustomerD, Model m) {

		m.addAttribute("acccno", accountNumber);
		m.addAttribute("depositAmount", depositAmount);
		m.addAttribute("balance", CustomerD.getBalance());

		Customer c = this.customerservices.getCustomerObj(accountNumber);
		CustomerDetails cd = this.customerservices.getDetailsOfCustomer(accountNumber);
		cd.setDamount(depositAmount);
		float bala = cd.getBalance();
		float balance1 = cd.getBalance() + depositAmount;
		cd.setBalance(balance1);
		String name = c.getName();
		m.addAttribute("bal", bala);

		m.addAttribute("balance1", balance1);
		m.addAttribute("nm", name);


		Customer customer = this.customerservices.getCustomerObj(accountNumber);
		customer.setCustomerDetails(cd);
		cd.setCustomer(customer);
		this.customerservices.saveCustomerTransactionDetails(cd);
		this.customerservices.saveCustomerObj(customer);

		System.out.println(cd);
		System.out.println(customer);

		return "updatebalanceAfterDeposits";

	}
	
	@RequestMapping(path = "/showAllAccounts", method = RequestMethod.GET)
	public String showAccounts(Model m) {
		
		List<Customer> CustomerList = this.customerservices.getAllCustomers();
		List<CustomerDetails> CustomerDetailsList = this.customerservices.getAllCustomersDetails();
		m.addAttribute("accounts", CustomerList);
		m.addAttribute("accountsDetails", CustomerDetailsList);

		return "allAccountdetails";
	}
	@RequestMapping("showAllAccounts/updatedetails/{cid}")
	public String updateDetailsByAdmin(@PathVariable("cid") int id, Model m) {

		Customer c = this.customerservices.getCustomerObj(id);

		m.addAttribute("Customer", c);

		return "updateform";
	}
	
	@RequestMapping("/delete/{cid}")
	public String DeleteAccoutByAdmin(@PathVariable("cid") int accno, Model m) {
		
		this.customerservices.removeCustomerObj(accno);

		//m.addAttribute("accountNumber", accno);

		return "redirect: /BankAccSystem/showAllAccounts";
	}
	
	
	
	@RequestMapping(value = "/customer_search")
	public String showId(@RequestParam("freetext") String accno, Model m)
	{
		int id = Integer.parseInt(accno);
		Customer s = this.customerservices.searchCustomer(id);
		m.addAttribute("accounts", s);
		return "oneaccountdetails";
		
	}
	
	
	

}
