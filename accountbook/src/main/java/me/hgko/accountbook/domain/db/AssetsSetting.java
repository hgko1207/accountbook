package me.hgko.accountbook.domain.db;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
}
