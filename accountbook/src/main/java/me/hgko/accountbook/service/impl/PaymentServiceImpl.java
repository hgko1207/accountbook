package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.Payment;
import me.hgko.accountbook.repository.PaymentRepository;
import me.hgko.accountbook.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentRepository paymentRepository;

	@Override
	public Payment get(Long id) {
		return paymentRepository.getOne(id);
	}

	@Override
	public List<Payment> getList() {
		return paymentRepository.findAll();
	}

	@Override
	public boolean regist(Payment domain) {
		if (isNew(domain)) {
            return paymentRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(Payment domain) {
		if (!isNew(domain)) {
			return paymentRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Long id) {
		paymentRepository.deleteById(id);
		return true;
	}

	private boolean isNew(Payment domain) {
        return !paymentRepository.existsById(domain.getId());
    }
}
