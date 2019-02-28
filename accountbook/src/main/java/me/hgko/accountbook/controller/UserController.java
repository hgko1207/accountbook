package me.hgko.accountbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 회원 정보 관리 컨트롤러
 * 
 * @author hgko
 *
 */
@Controller
@RequestMapping("user")
public class UserController {

	@GetMapping("profile")
	public void profile() {
		
	}
}
