package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.IncomeSetting;

public interface IncomeSettingRepository extends JpaRepository<IncomeSetting, Long>  {

}
