<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name : mypage.jsp
* @Description : 마이페이지 첫 화면
* @Modification Information
* @
* @  수정일     		     수정자            		수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.06         황진석      		 	최초생성
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/
-->
<!DOCTYPE html>
<html>
<%@ include file="../header.jsp" %>

<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>Edward kennedy’s profile</h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Rated movies</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="buster-light">
	<div class="page-single">
		<div class="container">
			<div class="row ipad-width2">
				<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="info">
							<h2> <strong>황진석 님</strong> </h2>
							<h3> <strong>h10046245h@naver.com</strong></h3>
						</div>
					<div class="user-information">
						<div class="user-fav">
								<ul>
									<li><a href="mypage.do">마이페이지</a></li>
								</ul>
										
								<ul>
									<li>회원 정보</li>
									<li><a href="pw_confirm.do">&nbsp;&nbsp;&nbsp;&nbsp;회원정보수정</a></li>
									<li><a href="member_out.do">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a></li>
								</ul>
					
								<ul>
									<li>고객센터</li>
									<li><a href="one_list.do">&nbsp;&nbsp;&nbsp;&nbsp;1:1 문의내역</a></li>
									<li><a href="faq.do">&nbsp;&nbsp;&nbsp;&nbsp;FAQ</a></li>
								</ul>
							</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-12 col-xs-12">
						<div class="info">
							<h1> <strong>마이 페이지</strong></h1>
						</div>
						
						<div class="form-style-1 user-pro">
							<div style="display:block;">
								<div class="user-img">
										<a href="#"><img src="resources/images/uploads/user-img.png" alt=""><br></a><br>
										<a href="#" class="redbtn1">사진 등록</a>
										<br>
								</div>
							
								<div style="display: inline-block; margin-left:5%;">
										<h4> 이름: 황진석</h4> 
										<h4> 닉네임: 비트코인</h4> 
										<h4> 이메일: h10046245h@naver.com</h4> 
										<h4> 선호장르: 공포/호러, 스릴러, 느와르</h4> 
								</div>
							
							<br><br>
							<div class="div_one">
								<div>
									<ul>
										<li>
											<span class="do_span">1:1 문의내역 </span>
											<span class="do_span1">
												<a href="one_list.do"><b> 더보기 </b></a>
											</span>
										</li>
										<li><hr class="hr_style"></li>
										<li>
											<span style="margin-left:3%;">구분</span>
											<span style="margin-left:25%;">상담제목</span>
											<span style="margin-left:25%;">작성날짜</span>
											<span style="margin-left:10%;">답변여부</span>
										</li>
										<li><hr class="hr_style1"></li>
									</ul>
									<ul>
										<li> 최근 내역이 없습니다.</li>
									</ul>
									<ul>
										<li><hr class="hr_style1"></li>
									</ul>
									
								</div>
							</div>
							<br><br><br>
							<div class="div_one">
									<div>
										<ul>
											<li>
												<span class="do_span"> 나의 팔로잉/팔로워 </span>
												<span class="do_span1">
													<a href="#"> <b> 더보기 </b></a>
												</span>
											</li>
											<li><hr class="hr_style"></li>
											<li>
													<span style="margin-left:3%;">팔로잉 ID</span>
													<span style="margin-left:25%;">팔로워 ID</span>
											</li>
											<li><hr class="hr_style1"></li>
										</ul>
										<ul>
											<li> 팔로워/팔로잉가 없습니다.</li>
										</ul>
										<ul>
											<li><hr class="hr_style1"></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>