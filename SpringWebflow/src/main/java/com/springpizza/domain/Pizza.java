package com.springpizza.domain;

import java.util.List;
import java.io.Serializable;
import java.util.ArrayList;

import com.springpizza.domain.PizzaSize;
import com.springpizza.domain.PizzaTopping;

public class Pizza implements Serializable {
	private PizzaSize size;
	private List<PizzaTopping> toppings;
	
	public Pizza() {
		// What if this is not set - will forms throw NULL pointer exception? (likely so...)
		size = PizzaSize.LARGE;
		toppings = new ArrayList<>();
	}
	
	/**
	 * @return the size
	 */
	public PizzaSize getSize() {
		return size;
	}
	/**
	 * @param size the size to set
	 */
	public void setSize(PizzaSize size) {
		this.size = size;
	}
	/**
	 * @return the toppings
	 */
	public List<PizzaTopping> getToppings() {
		return toppings;
	}
	/**
	 * @param toppings the toppings to set
	 */
	public void setToppings(List<PizzaTopping> toppings) {
		this.toppings = toppings;
	} 
}

/*
  public Pizza() {
    toppings = new ArrayList<Topping>();
    size = PizzaSize.LARGE;
  }

  public PizzaSize getSize() {
    return size;
  }

  public void setSize(PizzaSize size) {
    this.size = size;
  }
  
  public void setSize(String sizeString) {
    this.size = PizzaSize.valueOf(sizeString);
  }

  public List<Topping> getToppings() {
    return toppings;
  }

  public void setToppings(List<Topping> toppings) {
    this.toppings = toppings;
  }
  
  public void setToppings(String[] toppingStrings) {
    for (int i = 0; i < toppingStrings.length; i++) {
      toppings.add(Topping.valueOf(toppingStrings[i]));
    }
  }
*/