package me.hgko.accountbook.service.common;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.AssetsGroup;
import me.hgko.accountbook.repository.AssetsGroupRepository;

@Service
public class InitDataService {
	
	@Autowired
	private AssetsGroupRepository assetsGroupRepository;
	
	public void registAssetsGroup(int userId) {
		List<AssetsGroup> assetsGroups = new ArrayList<>();
		assetsGroups.add(new AssetsGroup("현금", true, userId));
		assetsGroups.add(new AssetsGroup("예금", true, userId));
		assetsGroups.add(new AssetsGroup("적금", true, userId));
		assetsGroups.add(new AssetsGroup("대출", true, userId));
		assetsGroups.add(new AssetsGroup("저축성 보험", true, userId));
		assetsGroups.add(new AssetsGroup("기타", true, userId));
		
		assetsGroupRepository.saveAll(assetsGroups);
	}
}
