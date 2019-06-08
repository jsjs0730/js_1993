package com.spring.springboard;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user.do")
public class UserController {

	@Autowired
	private UserService userService = null;
	
	@RequestMapping(params = "method=login")
	public String login (UserVO userVO, HttpSession session) throws Exception {
		UserVO vo = userService.login(userVO);
		System.out.println("userVO="+ vo.toString());
		
		if(vo !=null) {
			session.setAttribute("loginID", vo.getId());
			session.setAttribute("userName", vo.getName());
			session.setAttribute("userRole", vo.getRole());
			return "redirect:/board.do?method=getBoardList";
		}else {
			return "loginForm";
		}
	}
	
	@RequestMapping(params="method=logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "loginForm";
	}
}
