package com.jpa.repository.oracleDB;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jpa.entity.oracleDB.OracleBoard;

@Repository
public interface OracleRepo extends JpaRepository<OracleBoard, Integer>{

}
