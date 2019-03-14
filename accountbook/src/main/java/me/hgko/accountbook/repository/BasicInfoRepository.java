package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.BasicInfo;

public interface BasicInfoRepository extends JpaRepository<BasicInfo, Integer>  {

}
