package me.hgko.accountbook.domain.db;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;
import me.hgko.accountbook.domain.Domain;

@Entity
@Table(name = "tb_user")
@Data
public class User implements Domain {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	/** 사용자ID */
	@Column(unique=true, length = 20)
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
	
	@CreationTimestamp
	private LocalDateTime createDate;
	
	@UpdateTimestamp
	private LocalDateTime updateDate;
	
	@OneToOne
    @JoinColumn(name = "basic_info_id")
	private BasicInfo basicInfo;
}
