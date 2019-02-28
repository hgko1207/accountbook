package me.hgko.accountbook.domain.db;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 수입 내역 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Data
public class Income implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
}
