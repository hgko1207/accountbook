package me.hgko.accountbook.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import me.hgko.accountbook.domain.db.BasicInfo;
import me.hgko.accountbook.domain.db.BasicInfo.MemberGroupType;

/**
 * 설정 관리 컨트롤러
 * 
 * @author hgko
 *
 */
@Controller
@RequestMapping("setting")
public class SettingController {
	
	/**
	 * 기본 설정 화면
	 * @param model
	 */
	@GetMapping("basic")
    public void basic(Model model) {
		model.addAttribute("memberGroups", MemberGroupType.values());
	}
	
	/**
	 * 기본 설정 검색 기능
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
		
	}

	/**
	 * 수입 항목 설정 화면
	 * @param model
	 */
	@GetMapping("income")
    public void income(Model model) {
	}
	
	/**
	 * 지불 항목 설정 화면
	 * @param model
	 */
	@GetMapping("payment")
    public void payment(Model model) {
	}
	
	/**
	 * 지출 항목 설정 화면
	 * @param model
	 */
	@GetMapping("expense")
	public void expense(Model model) {
	}
}
