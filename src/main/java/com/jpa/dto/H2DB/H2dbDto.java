package com.jpa.dto.H2DB;

import com.jpa.entity.H2DB.H2Board;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class H2dbDto {
	
	private String title;
	private String writer;
	private String contents;
	
	
	@Builder
	public H2dbDto(String title, String writer, String contents) {
		this.title = title;
		this.writer = writer;
		this.contents = contents;
	}
	
	
	public H2Board toEntity() {
		return H2Board.builder()
				.title(title)
				.writer(writer)
				.contents(contents)
				.build();
	}
	
	
	
	
	
	

}
