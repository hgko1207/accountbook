package me.hgko.accountbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hgko.accountbook.domain.db.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long>  {

}
