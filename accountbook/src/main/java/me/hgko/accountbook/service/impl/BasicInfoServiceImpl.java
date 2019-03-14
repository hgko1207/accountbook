package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.BasicInfo;
import me.hgko.accountbook.repository.BasicInfoRepository;
import me.hgko.accountbook.service.BasicInfoService;

@Service
public class BasicInfoServiceImpl implements BasicInfoService {
	
	@Autowired
	private BasicInfoRepository basicInfoRepository;

	@Override
	public BasicInfo get(Integer id) {
		return basicInfoRepository.getOne(id);
	}

	@Override
	public List<BasicInfo> getList() {
		return basicInfoRepository.findAll();
	}

	@Override
	public boolean regist(BasicInfo domain) {
		if (isNew(domain)) {
            return basicInfoRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(BasicInfo domain) {
		if (!isNew(domain)) {
			return basicInfoRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Integer id) {
		basicInfoRepository.deleteById(id);
		return true;
	}

	private boolean isNew(BasicInfo domain) {
        return !basicInfoRepository.existsById(domain.getId());
    }
}
