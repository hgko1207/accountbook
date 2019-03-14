package me.hgko.accountbook.domain.db;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 신용카드 및 체크카드 설정 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_card_setting")
@Data
public class CardSetting implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
}
