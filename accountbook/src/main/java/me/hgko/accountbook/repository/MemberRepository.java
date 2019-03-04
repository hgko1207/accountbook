package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.Member;

public interface MemberRepository extends JpaRepository<Member, Long>  {

}
