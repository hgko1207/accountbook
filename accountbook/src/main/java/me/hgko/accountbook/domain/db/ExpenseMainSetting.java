package me.hgko.accountbook.domain.db;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;
import me.hgko.accountbook.domain.Domain;

/**
 * 지출 대분류 설정 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_expense_main_setting")
@Data
@NoArgsConstructor
public class ExpenseMainSetting implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private int userId;
	
	/** 대분류 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	@OneToMany(mappedBy = "expenseMainSetting", fetch = FetchType.EAGER)
	private List<ExpenseSubSetting> expenseSubSettings;
	
	public ExpenseMainSetting(String name, int userId) {
		this.name = name;
		this.userId = userId;
	}
}
