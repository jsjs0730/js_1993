package com.spring.springboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired(required=true)// @Autowired는 필드, 생성자 , 메소드에 사용가능
	
	private UserDAO userDAO = null;
	
	public UserVO login(UserVO userVO) throws Exception {
		try {
			UserVO vo = userDAO.login(userVO);
			return vo;
		}
		catch (Exception e) {
			throw new Exception(userVO.getId() + "인 회원의 로그인 실패." ,e);
		}
	}

}
