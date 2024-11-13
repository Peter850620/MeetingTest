package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	
	private String userId;
	private String userName;
	private String password;
	private byte[]  coverImage;
	private String biography;

}
