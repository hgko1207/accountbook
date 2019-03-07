package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 수입 및 지출 항목 추가 관리 컨트롤러
 * 
 * @author hgko
 *
 */
@Controller
@RequestMapping("regist")
public class RegistController {

	/**
	 * 수입 항목 추가 화면
	 * @param model
	 */
	@GetMapping("income")
    public void income(Model model) {
	}
	
	/**
	 * 지출 항목 추가 화면
	 * @param model
	 */
	@GetMapping("expense")
	public void expense(Model model) {
	}
}
