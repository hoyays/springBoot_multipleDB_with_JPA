package com.jpa.entity.H2DB;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.jpa.dto.H2DB.H2dbDto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
public class H2Board {

	//** H2파일모드인 경우 **
	//1. 
	//GenerationType을 AUTO로 설정했을 경우 테이블 확인결과, ID값에 1부터 들어가지 않는다.
	//예를 들어, table을 drop한 후 다시 데이터를 넣으면 1부터 들어가는게 아니라
	//drop 하기 전 table의 ID 숫자를 이어서 insert 한다.
	//2. 
	//GenerationType을 IDENTITY로 설정했을 경우 main class에 작성된 insert 데이터가 중복되어 들어간다.
	//3. 
	//완전 주석처리할 경우, 에러발생!!! (Unique index or primary key violation)
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;              //글번호, PK
	private String title;        //제목
	private String writer;       //작성자
	private String contents;     //내용
	private String createDate;   //작성일
	@Column(nullable = true)
	private int hitNum;          //조회수
	
	
	//Lombok의 빌드패턴 이용
	//setter의 역할을 한다고 생각하면 된다.
	@Builder
	public H2Board(String title, String writer, 
				   String contents, String createDate, int hitNum) {
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.createDate = createDate;
		this.hitNum = hitNum;
		
	}
	
	
	/** 
	 *  Entity => Dto 변환 메소드
	 */
	public H2dbDto toDto() {
		return H2dbDto.builder()
				.id(id)
				.title(title)
				.writer(writer)
				.contents(contents)
				.createDate(createDate)
				.hitNum(hitNum)
				.build();
	}
	
	
	
	
	
	
	
	
}
