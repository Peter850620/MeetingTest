package com.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "comment")
public class Commemt {
	private Integer commentId;
	private String userId;
	private Integer postId;
	private String content;
	private Date createdAt;

}
