package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Data;
import me.hgko.accountbook.domain.CommonEnum.Bank;
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
	
	/** 카드 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 카드 구분 */
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private CardType cardType;
	
	/** 결제은행 */
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private Bank paymentBank;
	
	/** 결제 일 */
	@Column(nullable = false, length = 5)
	private String paymentDay;
	
	/** 메모 */
	@Lob
	private String meno;
	
	public enum CardType {
		신용카드, 체크카드, 하이브리드
	}
}
