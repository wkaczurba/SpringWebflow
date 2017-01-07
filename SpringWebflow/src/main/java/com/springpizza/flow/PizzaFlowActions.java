package com.springpizza.flow;

import org.springframework.stereotype.Component;

@Component
public class PizzaFlowActions {

	public void findCustomer(String phoneNumber) {
		// TODO: Remove this one from here; check if in database + throw exception if not.
		System.out.println("DBG: PizzaFlowActions.findCustomer called");
		
		// Randomly - throw exception that customer was not found.
		if (Math.random() < 0.5)
			throw new CustomerNotFoundException();
	}
}
