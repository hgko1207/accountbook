package me.hgko.accountbook.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import me.hgko.accountbook.domain.CommonEnum.Bank;
import me.hgko.accountbook.domain.db.AssetsSetting;
import me.hgko.accountbook.domain.db.BasicInfo;
import me.hgko.accountbook.domain.db.CardSetting;
import me.hgko.accountbook.domain.db.IncomeSetting;
import me.hgko.accountbook.domain.db.BasicInfo.MemberGroupType;
import me.hgko.accountbook.domain.db.CardSetting.CardType;
import me.hgko.accountbook.service.AssetsGroupService;
import me.hgko.accountbook.service.IncomeSettingService;

/**
 * 설정 관리 컨트롤러
 * 
 * @author hgko
 *
 */
@Controller
@RequestMapping("setting")
public class SettingController {
	
	@Autowired
	private AssetsGroupService assetsGroupService;
	
	@Autowired
	private IncomeSettingService incomeSettingService;
	
	/**
	 * 기본 설정 화면
	 * @param model
	 */
	@GetMapping("basic")
    public void basic(Model model) {
		model.addAttribute("memberGroups", MemberGroupType.values());
	}
	
	/**
	 * 기본 설정 조회 기능
	 * @param model
	 */
	@PostMapping(value = "basic/search")
	@ResponseBody
	public List<BasicInfo> basicSearch() {
		return new ArrayList<>();
	}
	
	/**
	 * 자산 설정 화면
	 * @param model
	 */
	@GetMapping("assets")
    public void assets(Model model) {
		model.addAttribute("assetsGroups", assetsGroupService.getList());
	}
	
	/**
	 * 자산 설정 조회 기능
	 * @param model
	 */
	@PostMapping(value = "assets/search")
	@ResponseBody
	public List<AssetsSetting> assetsSearch() {
		return new ArrayList<>();
	}
	
	/**
	 * 카드 설정 화면
	 * @param model
	 */
	@GetMapping("card")
    public void card(Model model) {
		model.addAttribute("cardTypes", CardType.values());
		model.addAttribute("banks", Bank.values());
	}
	
	/**
	 * 카드 설정 조회 기능
	 * @param model
	 */
	@PostMapping(value = "card/search")
	@ResponseBody
	public List<CardSetting> cardSearch() {
		return new ArrayList<>();
	}

	/**
	 * 수입 항목 설정 화면
	 * @param model
	 */
	@GetMapping("income")
    public void income(Model model) {
	}
	
	/**
	 * 수입 항목 설정 조회 기능
	 * @param model
	 */
	@PostMapping(value = "income/search")
	@ResponseBody
	public List<IncomeSetting> incomeSearch() {
		return incomeSettingService.getList();
	}
	
	/**
	 * 지출 항목 설정 화면
	 * @param model
	 */
	@GetMapping("expense")
	public void expense(Model model) {
	}
	
	/**
	 * 고정비 설정 화면
	 * @param model
	 */
	@GetMapping("fixedCost")
    public void fixedCost(Model model) {
	}
	
	
}
