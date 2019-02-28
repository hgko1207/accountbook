package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.User;

public interface MemberRepository extends JpaRepository<User, String>  {

}
