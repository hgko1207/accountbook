package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 자산 설정 테이블 도메인
 * - 은행 및 현금 입력
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_assets_setting")
@Data
public class AssetsSetting implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	/** 구분 */
	@Column(nullable = false, length = 20)
	private String assetsType;
	
	/** 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 메모 */
	@Lob
	private String meno;
}
