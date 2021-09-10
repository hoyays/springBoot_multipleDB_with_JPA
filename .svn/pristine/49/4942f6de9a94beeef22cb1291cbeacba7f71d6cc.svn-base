package com.jpa;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.jpa.entity.H2DB.H2Board;
import com.jpa.repository.H2DB.H2DBRepo;


@SpringBootApplication
public class SpringBootMultipleDbWithJpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootMultipleDbWithJpaApplication.class, args);
	}
	
	
	//참고 : https://www.youtube.com/watch?v=iDogrHEo4x0
	
	//테스트
	//Data insert하기(import.sql 파일이 실행 안되고 있어 아래 방법으로 데이터 insert함)
	
	@Autowired
	private H2DBRepo h2Repository;
	
	@PostConstruct
	//초기화 메소드에 붙이는 어노테이션, WAS가 띄워질 때 실행된다. 
	//종속성 주입이 완료된 후 메소드가 실행된다.
	public void addData2DB() {
		h2Repository.saveAll(Stream.of(new H2Board("테스트제목", "admin","테스트내용입니다.")).collect(Collectors.toList()));
	}
	
	
	
	
//	@Autowired
//	private BookRepository bookRepository;
//	
//	@Autowired
//	private UserRepository userRepository;
//	
//	@PostConstruct
//	//초기화 메소드에 붙이는 어노테이션, WAS가 띄워질 때 실행된다. 
//	//종속성 주입이 완료된 후 메소드가 실행된다.
//	public void addData2DB() {
//		userRepository.saveAll(Stream.of(new User(744, "John")).collect(Collectors.toList()));
//		bookRepository.saveAll(Stream.of(new Book(111, "Core Java")).collect(Collectors.toList()));
//	}
//	
//	@GetMapping("/getUsers")
//	public List<User> getUsers(){
//		return userRepository.findAll();
//	}
//	
//	@GetMapping("/getBooks")
//	public List<Book> getBooks(){
//		return bookRepository.findAll();
//	}
	
	

}//main
