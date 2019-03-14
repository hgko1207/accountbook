package me.hgko.accountbook.domain.db;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 기본 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_basic_info")
@Data
public class BasicInfo implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int userId;
	
	/** 가계부 제목 */
	@Column(nullable = false, length = 20)
	private String accountTitle;

	/** 용도 */
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private MemberGroupType type;
	
	@OneToMany(mappedBy = "basicSetting", fetch = FetchType.EAGER)
	private List<Member> members;
	
	/** 생성시간 */
	@CreationTimestamp
	private LocalDateTime createDate;
	
	public enum MemberGroupType {
		개인용, 커플용, 가정용, 기타;
	}
}
