package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	 * 구성원 설정 화면
	 * @param model
	 */
	@GetMapping("member")
    public void member(Model model) {
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
