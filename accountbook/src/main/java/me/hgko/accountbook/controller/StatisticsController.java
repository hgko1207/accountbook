package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 수입, 지출 내역 통계 관리 컨트롤러
 * 
 * @author hgko
 *
 */
@Controller
@RequestMapping("statistics")
public class StatisticsController {

	/**
	 * 전체 통계 화면
	 * @param model
	 */
	@GetMapping("all")
	public void all(Model model) {
	}
	
	/**
	 * 수입 통계 화면
	 * @param model
	 */
	@GetMapping("income")
    public void income(Model model) {
	}
	
	/**
	 * 지출 통계 화면
	 * @param model
	 */
	@GetMapping("expense")
	public void expense(Model model) {
	}
}
