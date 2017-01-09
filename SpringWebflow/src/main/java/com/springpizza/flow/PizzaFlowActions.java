package com.springpizza.flow;

import org.springframework.stereotype.Component;

import com.springpizza.domain.Customer;

@Component
public class PizzaFlowActions {

	public Customer findCustomer(String phoneNumber) {
		// TODO: Remove this one from here; check if in database + throw exception if not.
		System.out.println("DBG: PizzaFlowActions.findCustomer called");
		
		if (phoneNumber.equals("123"))
			return new Customer(123, "John Ferris", "232 Ashfields", "New York", "NY", "1212312", "123");
		
		// Customer not found;
		throw new CustomerNotFoundException();
	}
}
