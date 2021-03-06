package com.jpa.dto.H2DB;

import com.jpa.entity.H2DB.H2Board;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class H2dbDto {
	
	private int id;				//글번호, PK
	private String title;		//제목
	private String writer;		//작성자
	private String contents;	//내용
	private String createDate;  //작성일
	private int hitNum;			//조회수
	
	
	@Builder
	public H2dbDto(int id, String title, String writer, 
				   String contents, String createDate, int hitNum) {
		this.id = id;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.createDate = createDate;
		this.hitNum = hitNum;
	}
	
	
	/** 
	 *  Dto => Entity 변환 메소드
	 */
	public H2Board toEntity() {
		return H2Board.builder()
				.title(title)
				.writer(writer)
				.contents(contents)
				.createDate(createDate)
				.hitNum(hitNum)
				.build();
	}
	
	
	
	
	
	

}
