package com.springpizza.domain;

import java.util.List;

import com.springpizza.domain.Customer;
import com.springpizza.domain.Pizza;

import java.io.Serializable;
import java.util.ArrayList;

public class Order implements Serializable {
	
	private List<Pizza> pizzas;
	private Customer customer;
	private Payment payment;

	public Order() {
		setPizzas(new ArrayList<>());
		setCustomer(new Customer());
	}

	public List<Pizza> getPizzas() {
		return pizzas;
	}

	public void setPizzas(List<Pizza> pizzas) {
		this.pizzas = pizzas;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public void addPizza(Pizza pizza) {
		this.pizzas.add(pizza);
	}
	
	public float getFloat() {
		return 0.0f; // pricing to be added.
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	
}
