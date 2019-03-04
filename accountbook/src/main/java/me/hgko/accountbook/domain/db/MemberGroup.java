package me.hgko.accountbook.domain.db;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

/**
 * 구성원 그룹 정보 테이블 도메인
 * 
 * @author hgko
 *
 */
@Entity
@Table(name = "tb_member_group")
@Data
public class MemberGroup implements Domain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int userId;
	
	@OneToMany(mappedBy = "memberGroup", fetch = FetchType.EAGER)
	private List<Member> members;
	
	public enum MemberGroupType {
		개인, 커플, 가족, 기타;
	}
}
