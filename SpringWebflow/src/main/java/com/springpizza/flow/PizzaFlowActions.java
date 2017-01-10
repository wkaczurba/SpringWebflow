package com.springpizza.flow;

import org.springframework.stereotype.Component;

import com.springpizza.domain.Customer;
import com.springpizza.domain.Order;
import com.springpizza.domain.Pizza;

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
	
	public void dbgPrintPizzas(Order order) {
		for (Pizza pizza : order.getPizzas()) {
			//System.out.println( pizza.getSize() + ":" + pizza.getToppings());
			dbgPrintPizza(pizza);
		}
	}
	
	public void dbgPrintPizza(Pizza pizza) {
		System.out.println( pizza.getSize() + ":" + pizza.getToppings());
	}
}
