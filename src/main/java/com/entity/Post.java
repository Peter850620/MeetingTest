package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "post")
public class Post {
	
	private Integer postId;
	private String userId;
	private String content;
	private byte[] image;
	private String createdAt;
	
}
