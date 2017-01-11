package com.springpizza.domain;

import java.io.Serializable;

public class Payment implements Serializable {
	private float amount;

	/**
	 * @return the amount
	 */
	public float getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
}
