package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * 
 * @author hgko
 *
 */
@Controller
public class MainController {

	@GetMapping("/")
    public String index() throws Exception {
        return "redirect:login";
    }
	
	/**
	 * 로그인 화면
	 */
	@GetMapping("login")
    public void login() {
		
	}
	
	@GetMapping("home")
	public void home(Model model) {
		
	}
	
	/**
	 * 초기 설정 화면
	 * 
	 * @param model
	 */
	@GetMapping("setting")
	public void setting(Model model) {
		
	}
}
