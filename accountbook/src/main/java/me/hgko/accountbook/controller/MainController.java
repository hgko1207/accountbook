package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import me.hgko.accountbook.domain.db.MemberGroup.MemberGroupType;

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
	
	@GetMapping("home")
	public void home(Model model) {
	}
	
	/**
	 * 로그인 화면
	 */
	@GetMapping("login")
    public void login(Model model) {
	}
	
	@PostMapping("login")
	public String login() {
		return "redirect:setting";
	}
	
	/**
	 * 회원 가입 화면
	 */
	@GetMapping("signup")
    public void signup(Model model) {
	}
	
	@PostMapping("signup")
	public String signup() {
		return "redirect:login";
	}
	
	/**
	 * 초기 설정 화면
	 */
	@GetMapping("setting")
	public void setting(Model model) {
		model.addAttribute("memberGroups", MemberGroupType.values());
	}
}
