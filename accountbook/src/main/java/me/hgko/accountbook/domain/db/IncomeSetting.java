package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;
import me.hgko.accountbook.domain.Domain;

/**
 * 수입 항목 설정 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_income_setting")
@Data
@NoArgsConstructor
public class IncomeSetting implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private int userId;
	
	/** 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	@Lob
	private String memo;
	
	public IncomeSetting(String name, int userId) {
		this.name = name;
		this.userId = userId;
	}
}
