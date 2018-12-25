package com.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

 

@Entity
public class Category implements Serializable {
	
	@Id
	private int c_Id;
	private String name;
    @OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="category")
    private Set<Product> products = new HashSet<Product>(0);
	public int getC_Id() {
		return c_Id;
	}
	public void setC_Id(int c_Id) {
		this.c_Id = c_Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
    
}
