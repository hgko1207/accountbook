package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.ExpenseMainSetting;
import me.hgko.accountbook.repository.ExpenseMainSettingRepository;
import me.hgko.accountbook.service.ExpenseMainSettingService;

@Service
public class ExpenseMainSettingServiceImpl implements ExpenseMainSettingService {
	
	@Autowired
	private ExpenseMainSettingRepository expenseMainSettingRepository;

	@Override
	public ExpenseMainSetting get(Long id) {
		return expenseMainSettingRepository.getOne(id);
	}

	@Override
	public List<ExpenseMainSetting> getList() {
		return expenseMainSettingRepository.findAll();
	}

	@Override
	public boolean regist(ExpenseMainSetting domain) {
		if (isNew(domain)) {
            return expenseMainSettingRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(ExpenseMainSetting domain) {
		if (!isNew(domain)) {
			return expenseMainSettingRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Long id) {
		expenseMainSettingRepository.deleteById(id);
		return true;
	}

	private boolean isNew(ExpenseMainSetting domain) {
        return !expenseMainSettingRepository.existsById(domain.getId());
    }
}
