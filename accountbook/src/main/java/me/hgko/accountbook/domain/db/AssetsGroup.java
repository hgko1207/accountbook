package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;
import me.hgko.accountbook.domain.Domain;

/**
 * 자산 그룹 관리 테이블 도메인
 * - 현금, 예금, 적금, 대출, 보장성보험, 대여금
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_assets_group")
@Data
@NoArgsConstructor
public class AssetsGroup implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 사용여부 */
	private boolean used;
	
	private int userId;
	
	public AssetsGroup(String name, boolean used, int userId) {
		this.name = name;
		this.used = used;
		this.userId = userId;
	}
}
