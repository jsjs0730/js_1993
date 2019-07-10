<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name : modal
* @Description : 헤더 수정 및 모달 연습
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.02   박현민       최초생성
* @ 2019.07.04   박현민       헤더 푸터 수정
* @ 2019.07.05   qkrgusals
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/
-->
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html>
<head>
    <!-- Basic need -->
    <title>Open Pediatrics</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <!-- Mobile specific meta -->
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
   	<link rel="stylesheet" href="<c:url value="/resources/css/plugins.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/hjs.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/hm_css.css" />">
    <!-- hm | css 추가 -->
</head>

<body>
    <!--preloading-->
    <div id="preloader">
        <img class="logo" src="<c:url value="/resources/images/logo1.png" />" alt="로고" width="119" height="58">
        <div id="status">
            <span></span>
            <span></span>
        </div>
    </div>
    <!--end of preloading-->

    <!-- ======================================================================================================================== -->
    <!--                                               hm |        모달 팝업 시작                                                  -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!--                                            hm |         로그인 팝업 시작                                                  -->
    <!-- 입력 폼 패턴 삭제 -->
    <div class="login-wrapper" id="login-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Login</h3>
            <form method="post" action="login.php">
                <!-- action 변경 필요 -->
                <div class="row">
                    <label for="email">
                        <input type="text" name="email" id="email" placeholder="이메일" required="required"
                            autocapitalize="off" />
                    </label>
                </div>

                <div class="row">
                    <label for="password">
                        <input type="password" name="password" id="password" placeholder="비밀번호" required="required" />
                    </label>
                </div>
                <div class="row">
                    <div class="remember">
                        <div>
                            <input type="checkbox" name="remember" value="Remember me"><span>아이디 저장</span>
                        </div>
                    </div>
                </div>
                <div class="row" id="hm_logtext">
                    <button type="submit">Login</button>
                    <a class="btn signupLink" href="#">회원가입 | </a>
                    <a class="btn idfindLink" href="">아이디 찾기 | </a>
                    <a class="btn pwfindLink" href="">비밀번호 찾기</a>
                </div>
            </form>

        </div>
    </div>
    <!--    hm |                                                         로그인 폼 팝업 끝                                                 -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!-- |   hm |                                                      아이디 찾기 팝업 시작                                              | -->
    <div class="login-wrapper" id="id-find-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h3>아이디 찾기</h3>
            <h6> 등록된 휴대폰 번호로 찾기</h6>
            <p> 가입 당시 입력한 휴대전화 번호를 통해 아이디를 찾을 수 있습니다.</p>
            <form method="post" action="id_find.php">
                <!-- login.php 액션 변경 -->

                <div class="row">
                    <label for="username">
                        <!-- username 라벨 이름 변경 -->
                        이름
                        <!-- 라벨 추가 -->
                        <input type="text" name="username" id="username" placeholder="이름" required="required"
                            autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                    </label>
                </div>

                <div class="row">
                    <label for="phone">
                        <!-- password 라벨 이름 변경 -->
                        휴대전화</br>
                        <!-- 라벨 추가 -->
                        <input type="text" name="phone" id="phone-1" placeholder="010" required="required" /> -
                        <input type="text" name="phone" id="phone-2" placeholder="" required="required" /> -
                        <input type="text" name="phone" id="phone-3" placeholder="" required="required" />
                        <!-- name, id, placeholder 변경-->
                    </label>
                </div>

                <div class="row" id="hm_logtext">
                    <!-- <button type="submit">확인</button>  버튼 이름 변경 -->
                    <button class="idokLink" type="submit">확인</button>
                    <a class="btn pwfindLink" href="">비밀번호 찾기</a> <!-- 하단 링크 변경 -->
                </div>
            </form>

        </div>
    </div>
    <!-- |        hm |                                                  아이디 찾기 팝업 끝                                              |  -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!-- |        hm |                                            아이디 찾기 확인 팝업 시작                                              | -->
    <div class="login-wrapper" id="id-ok-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content" style="text-align: center">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h6> 입력하신 정보와 일치하는 아이디는</h6>
            <h6> 아래와 같습니다.</h6>
            <!-- 이메일 정보 추가 -->
            <p>bit0***@gmail.com</p>
            <div class="row">
                <button class="close" type="submit" style="display: inline-block;">확인</button>
            </div>
        </div>
    </div>
    <!-- |           hm |                                          아이디 찾기 확인 팝업 끝                                              |  -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!-- |          hm |                                        비밀번호 찾기 폼 팝업 시작                                              | -->
    <div class="login-wrapper" id="pw-find-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h3>비밀번호 찾기</h3>
            <h6> 등록된 휴대폰 번호로 찾기</h6>
            <p> 가입 당시 입력한 휴대전화 번호를 통해 인증 후 새비밀번호를 등록해주세요.</p>
            <form method="post" action="pw_find.php">
                <!-- login.php 액션 변경 -->
                <div class="row">
                    <label for="email">
                        <!-- username 라벨 이름 변경 -->
                        이메일
                        <!-- 라벨 추가 -->
                        <input type="text" name="email" id="email" placeholder="이메일" required="required"
                            autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                    </label>
                </div>

                <div class="row">
                    <label for="username">
                        <!-- username 라벨 이름 변경 -->
                        이름
                        <!-- 라벨 추가 -->
                        <input type="text" name="username" id="username" placeholder="이름" required="required"
                            autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                    </label>
                </div>

                <div class="row">
                    <label for="phone">
                        <!-- password 라벨 이름 변경 -->
                        휴대전화</br>
                        <!-- 라벨 추가 -->
                        <input type="text" name="phone-1" id="phone-1" placeholder="010" required="required" /> -
                        <input type="text" name="phone-2" id="phone-2" placeholder="" required="required" /> -
                        <input type="text" name="phone-3" id="phone-3" placeholder="" required="required" />
                        <!-- name, id, placeholder 변경-->
                    </label>
                </div>

                <div class="row" id="hm_logtext">
                    <!-- <button type="submit">확인</button>  버튼 이름 변경 -->
                    <button class="pwokLink" type="submit">확인</button>
                    <a class="btn idfindLink" href="">아이디 찾기</a> <!-- 하단 링크 변경 -->
                </div>
            </form>

        </div>
    </div>
    <!-- |      hm |                                            비밀번호 찾기 폼 팝업 끝                                               |  -->
    <!-- ======================================================================================================================== -->




    <!-- ======================================================================================================================== -->
    <!-- |       hm |                                           비밀번호 찾기 확인 팝업 시작                                              | -->
    <div class="login-wrapper" id="pw-ok-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h3>비밀번호 찾기</h3>
            <p> 회원님의 계정 비밀번호를 재설정 해주세요.</p>
            <p>신규비밀번호는 8-20자 이내의 영문자, 숫자의 조합으로 작성 하셔야 합니다.</p>

            <div class="row">
                <label for="password">
                    <!-- username 라벨 이름 변경 -->
                    신규 비밀번호 입력 </br>
                    <!-- 라벨 추가 -->
                    <input type="password" name="password" id="password" placeholder="" required="required"
                        autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                </label>
            </div>

            <div class="row">
                <label for="password2">
                    <!-- username 라벨 이름 변경 -->
                    비밀번호 확인 </br>
                    <!-- 라벨 추가 -->
                    <input type="password" name="password2" id="password2" placeholder="" required="required"
                        autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                </label>
            </div>
            <div class="row">
                <button class="" type="submit">비밀번호 변경</button>
            </div>
        </div>
    </div>
    <!-- |     hm |                                             비밀번호 찾기 확인 팝업 끝                                               |  -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!--         hm |                                                   회원가입 폼 팝업 시작                                              -->
    <!--signup form popup-->
    <div class="login-wrapper" id="signup-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>sign up</h3>
            <form method="post" action="signup.php">

                <div class="row">
                    <label for="email-2">
                        이메일 :</br>
                        <input type="text" name="email" id="email-2" placeholder="이메일을 입력하세요" required="required" />
                        <button id="overch">중복확인</button>
                    </label>
                </div>

                <div class="row">
                    <label for="username-2">
                        이름 :
                        <input type="text" name="username" id="username-2" placeholder="이름을 입력하세요"
                            required="required" />
                    </label>
                </div>

                <div class="row">
                    <label for="nickname-2">
                        닉네임 :</br>
                        <input type="text" name="nickname" id="nickname-2" placeholder="닉네임을 입력하세요"
                            required="required" />
                        <button id="overch">중복확인</button>
                    </label>
                </div>

                <div class="row">
                    <label for="password-2">
                        비밀번호:
                        <input type="password" name="password" id="password-2" placeholder="8-20자 이내 영문자, 숫자의 조합"
                            required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        비밀번호 확인 :
                        <input type="password" name="password" id="repassword-2" placeholder="8-20자 이내 영문자, 숫자의 조합"
                            required="required" />
                    </label>
                </div>

                <div class="row">
                    <label for="repassword-2">
                        휴대전화 : </br>
                        <input type="text" name="phone-1" id="phone-1" placeholder="" required="required" /> -
                        <input type="text" name="phone-2" id="phone-2" placeholder="" required="required" /> -
                        <input type="text" name="phone-3" id="phone-3" placeholder="" required="required" />
                    </label>
                </div>

                <div class="row">
                    <label for="genre-2">
                        선호장르 : </br>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="공포/호러" type="radio" checked><span><i></i>공포/호러</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="멜로/로맨스" type="radio"><span><i></i>멜로/로맨스 </span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="액션" type="radio"><span><i></i>액션</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="코미디" type="radio"><span><i></i>코미디</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="범죄" type="radio"><span><i></i>범죄</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="스릴러" type="radio"><span><i></i>스릴러</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="느와르" type="radio"><span><i></i>느와르</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="가족" type="radio"><span><i></i>가족</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="애니메이션" type="radio"><span><i></i>애니메이션</span>
                        </label>
                        <label class="fancy-radio custom-color-coral">
                            <input name="gender4" value="코미디" type="radio"><span><i></i>코미디</span>
                        </label>
                    </label>
                </div>

                <div class="row">
                    <label for="terms-2">
                        약관동의 : </br>
                        <label class="fancy-checkbox custom-bgcolor-coral">
                            <input type="checkbox" checked><span>[필수]이용약관</span>
                        </label>
                        <a href="약관.html"
                            onclick="window.open(this.href, '_blank', 'width=500px,height=500px,toolbars=no,scrollbars=no'); return false;">약관보기</a>
                        <label class="fancy-checkbox custom-bgcolor-coral">
                            <input type="checkbox" checked><span>[필수]개인정보 수집 및 이용</span></label>
                        <a href="약관.html"
                            onclick="window.open(this.href, '_blank', 'width=500px,height=500px,toolbars=no,scrollbars=no'); return false;">약관보기</a>
                        <label class="fancy-checkbox custom-bgcolor-coral">
                            <input type="checkbox" checked><span>이메일 수신 동의</span></label>
                        <label class="fancy-checkbox custom-bgcolor-coral">
                            <input type="checkbox" checked><span>SMS 수신 동의</span></label>
                    </label>
                    <hr>
                    <label class="fancy-checkbox custom-bgcolor-coral" id="checkall">
                        <input type="checkbox" checked=""><span>전체동의</span></label>

                </div>


                <div class="row">
                    <button class="signupokLink" type="submit">가입하기</button>
                </div>

            </form>
        </div>
    </div>
    <!--end of signup form popup-->
    <!--        hm |                                                     회원가입 폼 팝업 끝                                               -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!-- |      hm |                                              회원가입 확인 팝업 시작                                                 | -->
    <!--signup OK popup-->
    <div class="login-wrapper" id="signup-ok-content" style="height: 50%;">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>sign up</h3>

            <h4>회원가입이 완료되었습니다.</h4></br>
            <!-- 코드수정: id 넣어야 함-->
            <h6>회원님 회원가입을 축하합니다.</h6></br>
            <p>블록버스터의 다양한 영화 정보를 확인하세요!</p>

            <div class="row">
                <button class="close" type="submit" id="hm_button2">홈으로</button>
                <button class="loginLink" type="submit" id="hm_button2">로그인</button>

            </div>
        </div>
    </div>
    <!--end of signup OK popup-->
    <!-- |          hm |                                           회원가입 확인 팝업 끝                                                 |  -->
    <!-- ======================================================================================================================== -->




    <!-- ======================================================================================================================== -->
    <!-- |          hm |                                          아이디 중복확인 팝업 시작                                               | -->
    <div class="login-wrapper" id="id-check-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h3>아이디 중복 확인</h3>

            <div class="row">
                <label for="email">
                    <!-- username 라벨 이름 변경 -->
                    사용할 이메일 입력
                    <!-- 라벨 추가 -->
                    <input type="text" name="email" id="email" placeholder="" required="required"
                        autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                </label>
            </div>

            <div class="row">
                <button class="" type="submit">확인</button> <!-- 한칸만 끄기.. -->
            </div>
        </div>
    </div>
    <!-- |           hm |                                          아이디 중복확인 팝업 끝                                               |  -->
    <!-- ======================================================================================================================== -->

    <!-- ======================================================================================================================== -->
    <!-- |            hm |                                        닉네임 중복확인 팝업 시작                                               | -->
    <div class="login-wrapper" id="nik-check-content">
        <!-- login-content 아이디 변경 -->
        <div class="login-content">
            <!-- login-content 클래스 변경 X -->
            <a href="#" class="close">x</a>
            <h3>닉네임 중복 확인</h3>

            <div class="row">
                <label for="nickname">
                    <!-- username 라벨 이름 변경 -->
                    사용할 닉네임 입력
                    <!-- 라벨 추가 -->
                    <input type="text" name="nickname" id="nickname" placeholder="" required="required"
                        autocapitalize="off" /> <!-- name, id, placeholder 변경-->
                </label>
            </div>

            <div class="row">
                <button class="" type="submit">확인</button> <!-- 한칸만 끄기 -->
            </div>
        </div>
    </div>
    <!-- |      hm |                                               닉네임 중복확인 팝업 끝                                               |  -->
    <!-- ======================================================================================================================== -->



    <!-- ======================================================================================================================== -->
    <!-- ======================================================================================================================== -->
    <!-- ======================================================================================================================== -->
    <!--        hm |                                                       모달 팝업 끝                                                    -->
    <!-- ======================================================================================================================== -->

    <!-- BEGIN | Header -->
    <header class="ht-header">
        <div class="container">
            <nav class="navbar navbar-default navbar-custom">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header logo">
                    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <div id="nav-icon1">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <a href="index.html"><img class="logo" src="resources/images/logo1.png" alt="" width="119" height="58"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav flex-child-menu menu-left">
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <!--  hm |   add : 각 항목의 텍스트 변경-->
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" href="movieTicketing.html">
                                예매
                            </a>
                        </li>
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                                영화<i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu level1">
                                <li><a href="movieChart.html">영화 차트</a></li>
                                <li class="it-last"><a href="movieList.html">영화 목록</a></li>
                            </ul>
                        </li>
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" href="cinemaList.html">
                                영화관
                            </a>
                        </li>
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" href="boardEventCollection.html">
                                이벤트 & 정보
                            </a>
                        </li>
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                                커뮤니티<i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu level1">
                                <li><a href="boardFreeList.html">자유 게시판</a></li>
                                <li class="it-last"><a href="boardShreList.html">나눔 게시판</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav flex-child-menu menu-right">
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" href="mmlList.html">
                                나영리
                            </a>
                        </li>
                        <li><a href="mypage.html">마이페이지</a></li>
                        <li class="loginLink"><a href="#">로그인</a></li>
                        <li class="btn signupLink"><a href="#">회원가입</a></li>
                        <!--  hm |   <li><a href="member_join.html">회원가입</a></li> -->
                    </ul>
                </div>
                <!-- 검색 모달 -->
                <form id="demo-2">
                    <input type="search" placeholder="Search">
                </form>
            </nav>
        </div>
    </header>
    <!-- END | Header -->
</body>
</html>