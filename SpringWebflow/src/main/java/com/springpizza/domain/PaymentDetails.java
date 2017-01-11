package com.springpizza.domain;

import java.io.Serializable;

public class PaymentDetails implements Serializable {
	//Payment payment; // for the amount;
	private PaymentType type;
	private String creditCard;
	
	public PaymentDetails() {
		type = PaymentType.CASH;
		creditCard = "";
	}
	
	/**
	 * @return the type
	 */
	public PaymentType getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(PaymentType type) {
		this.type = type;
	}
	/**
	 * @return the creditCard
	 */
	public String getCreditCard() {
		return creditCard;
	}
	/**
	 * @param creditCard the creditCard to set
	 */
	public void setCreditCard(String creditCard) {
		this.creditCard = creditCard;
	}
}



