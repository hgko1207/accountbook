package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.NoArgsConstructor;
import me.hgko.accountbook.domain.Domain;

/**
 * 지출 소분류 설정 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_expense_sub_setting")
@Data
@NoArgsConstructor
public class ExpenseSubSetting implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	/** 소분류 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 메모 */
	@Lob
	private String memo;
	
	@ManyToOne
	@JoinColumn(name = "expense_main_setting_id")
    @JsonIgnore
    private ExpenseMainSetting expenseMainSetting;
	
	public ExpenseSubSetting(String name) {
		this.name = name;
	}
	
	public ExpenseSubSetting(String name, String memo) {
		this.name = name;
		this.memo = memo;
	}
}
