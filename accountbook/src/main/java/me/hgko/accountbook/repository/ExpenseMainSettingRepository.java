package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.ExpenseMainSetting;

public interface ExpenseMainSettingRepository extends JpaRepository<ExpenseMainSetting, Long>  {

}
