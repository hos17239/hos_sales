package domian;

import java.util.ArrayList;

public class Customer {
	private int customerId;
	private String firstName;
	private double credit;
	private ArrayList<Customer> customers;

	public static void main(String[] args) {
		new Customer();
	}

	public Customer() {
		customers = new ArrayList<>();
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public double getCredit() {
		return credit;
	}

	public void setCredit(double credit) {
		this.credit = credit;
	}

	public ArrayList<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(ArrayList<Customer> customers) {
		this.customers = customers;
	}

}
