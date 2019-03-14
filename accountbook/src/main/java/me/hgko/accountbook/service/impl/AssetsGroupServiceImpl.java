package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.AssetsGroup;
import me.hgko.accountbook.repository.AssetsGroupRepository;
import me.hgko.accountbook.service.AssetsGroupService;

@Service
public class AssetsGroupServiceImpl implements AssetsGroupService {
	
	@Autowired
	private AssetsGroupRepository assetsGroupRepository;

	@Override
	public AssetsGroup get(Long id) {
		return assetsGroupRepository.getOne(id);
	}

	@Override
	public List<AssetsGroup> getList() {
		return assetsGroupRepository.findAll();
	}

	@Override
	public boolean regist(AssetsGroup domain) {
		if (isNew(domain)) {
            return assetsGroupRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(AssetsGroup domain) {
		if (!isNew(domain)) {
			return assetsGroupRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Long id) {
		assetsGroupRepository.deleteById(id);
		return true;
	}

	private boolean isNew(AssetsGroup domain) {
        return !assetsGroupRepository.existsById(domain.getId());
    }
}
