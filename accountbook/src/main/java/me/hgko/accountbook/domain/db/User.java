package me.hgko.accountbook.domain.db;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

@Entity
@Table(name = "tb_user")
@Data
public class User implements Domain {

	/** 사용자ID */
	@Id
	@Column(nullable = false, length = 20)
	private String userId;
	
	/** 사용자명 */
	@Column(nullable = false, length = 20)
	private String name;
	
	/** 사용자비밀번호암호화 */
	@Column(nullable = false, length = 20)
	private String password;
	
	/** 이메일 */
	@Column(nullable = false, length = 45)
	private String email;
	
	/** 핸드폰번호 */
	@Column(nullable = false, length = 20)
	private String phone;
	
	@OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
	private List<Member> members;
}
