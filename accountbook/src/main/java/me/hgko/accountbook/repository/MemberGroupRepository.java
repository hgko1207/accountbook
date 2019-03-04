package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.MemberGroup;

public interface MemberGroupRepository extends JpaRepository<MemberGroup, Integer>  {

}
