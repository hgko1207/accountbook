package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.MemberGroup;
import me.hgko.accountbook.repository.MemberGroupRepository;
import me.hgko.accountbook.service.MemberGroupService;

@Service
public class MemberGroupServiceImpl implements MemberGroupService {
	
	@Autowired
	private MemberGroupRepository memberGroupRepository;

	@Override
	public MemberGroup get(Integer id) {
		return memberGroupRepository.getOne(id);
	}

	@Override
	public List<MemberGroup> getList() {
		return memberGroupRepository.findAll();
	}

	@Override
	public boolean regist(MemberGroup domain) {
		if (isNew(domain)) {
            return memberGroupRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(MemberGroup domain) {
		if (!isNew(domain)) {
			return memberGroupRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(Integer id) {
		memberGroupRepository.deleteById(id);
		return true;
	}

	private boolean isNew(MemberGroup domain) {
        return !memberGroupRepository.existsById(domain.getId());
    }
}
