package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.IncomeSetting;
import me.hgko.accountbook.repository.IncomeSettingRepository;
import me.hgko.accountbook.service.IncomeSettingService;

@Service
public class IncomeSettingServiceImpl implements IncomeSettingService {
	
	@Autowired
	private IncomeSettingRepository incomeSettingRepository;

	@Override
	public IncomeSetting get(Long id) {
		return incomeSettingRepository.getOne(id);
	}

	@Override
	public List<IncomeSetting> getList() {
		return incomeSettingRepository.findAll();
	}

	@Override
	public boolean regist(IncomeSetting domain) {
		if (isNew(domain)) {
            return incomeSettingRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(IncomeSetting domain) {
		if (!isNew(domain)) {
			return incomeSettingRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Long id) {
		incomeSettingRepository.deleteById(id);
		return true;
	}

	private boolean isNew(IncomeSetting domain) {
        return !incomeSettingRepository.existsById(domain.getId());
    }
}
