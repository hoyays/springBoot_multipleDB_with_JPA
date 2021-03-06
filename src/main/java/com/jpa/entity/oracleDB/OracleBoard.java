package com.jpa.entity.oracleDB;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class OracleBoard {

	@Id
	private int id;
	private String ora_title;
}
