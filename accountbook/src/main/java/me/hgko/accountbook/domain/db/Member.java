package me.hgko.accountbook.domain.db;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 구성원 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Data
public class Member implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
}
