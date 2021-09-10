package com.jpa.entity.H2DB;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
public class H2Board {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String writer;
	private String contents;
	
	
	@Builder
	public H2Board(String title, String writer, String contents) {
		this.title = title;
		this.writer = writer;
		this.contents = contents;
	}
	
}
