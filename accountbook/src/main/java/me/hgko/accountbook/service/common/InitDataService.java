package me.hgko.accountbook.service.common;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.AssetsGroup;
import me.hgko.accountbook.domain.db.ExpenseMainSetting;
import me.hgko.accountbook.domain.db.ExpenseSubSetting;
import me.hgko.accountbook.domain.db.IncomeSetting;
import me.hgko.accountbook.repository.AssetsGroupRepository;
import me.hgko.accountbook.repository.ExpenseMainSettingRepository;
import me.hgko.accountbook.repository.IncomeSettingRepository;

/**
 * 사용자 회원가입시 초기 데이터 입력 관리 서비스
 * 
 * @author hgko
 *
 */
@Service
public class InitDataService {
	
	@Autowired
	private AssetsGroupRepository assetsGroupRepository;
	
	@Autowired
	private IncomeSettingRepository incomeSettingRepository;
	
	@Autowired
	private ExpenseMainSettingRepository expenseMainSettingRepository;
	
	/**
	 * 자산 그룹 관리 입력
	 * @param userId
	 */
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
	
	/**
	 * 수입 분류 입력
	 * @param userId
	 */
	public void registIncomeSetting(int userId) {
		List<IncomeSetting> incomeSettings = new ArrayList<>();
		incomeSettings.add(new IncomeSetting("급여", userId));
		incomeSettings.add(new IncomeSetting("상여금", userId));
		incomeSettings.add(new IncomeSetting("이자수익", userId));
		incomeSettings.add(new IncomeSetting("기타수입", userId));
		
		incomeSettingRepository.saveAll(incomeSettings);
	}
	
	@PostConstruct
	public void registExpenseSetting() {
		List<ExpenseMainSetting> expenseMainSettings = new ArrayList<>();
		ExpenseMainSetting setting = new ExpenseMainSetting("식비", 1);
		List<ExpenseSubSetting> subSettings = new ArrayList<>();
		subSettings.add(new ExpenseSubSetting("주식"));
		subSettings.add(new ExpenseSubSetting("외식"));
		subSettings.add(new ExpenseSubSetting("간식"));
		subSettings.add(new ExpenseSubSetting("부식", "음식을 만들어 먹기위해 사는 재료들"));
		subSettings.add(new ExpenseSubSetting("커피,음료"));
		subSettings.add(new ExpenseSubSetting("기타"));
		setting.setExpenseSubSettings(subSettings);
		
		System.err.println(expenseMainSettings);
		
		expenseMainSettings.add(setting);
		
		expenseMainSettingRepository.saveAll(expenseMainSettings);
	}
}
