package me.hgko.accountbook.domain.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 구성원 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_member")
@Data
public class Member implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	/** 이름 */
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 별명 */
	@Column(length = 45)
	private String nickname;
	
	/** 핸드폰번호 */
	@Column(nullable = false, length = 20)
	private String phone;
	
	@ManyToOne
	@JoinColumn(name = "basic_setting_id")
    @JsonIgnore
    private BasicInfo basicSetting;
}
