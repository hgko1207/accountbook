package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.AssetsGroup;

public interface AssetsGroupRepository extends JpaRepository<AssetsGroup, Long>  {

}
