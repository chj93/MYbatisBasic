<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script  src="/web/script/member.js" charset="UTF-8"></script>

</head>
<body >
	<div id="wrapper">
	
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span>
						<span>13:30:22</span>
						<span><em>OOO님</em> 좋은 하루 되세요</span>
						<a href="" class="btnLogout"><img src="../img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap">
				
			</div>
		</div>		
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">회원가입</h1>
					<div class="tbWrapRt" style="padding-right: 250px; margin-top: 100px;">
					<form action="memberInsert.jsp" name="joinFrm" method="post">
						<table class="bbsWrite mgb10"  >
								<caption></caption>
								<colgroup>
									<col width="95" />
									<col />
								</colgroup>
								<tbody>
								<tr>
									<th>이름</th>
									<td><input type="text" name="name" class="inputText" size="30" /></td>
								</tr>
								<tr>
									<th>아이디</th>
									<td>
									<!-- <input type="text" name="" class="inputText" size="30" /> <span class="buttonFuc"><a href="javascript:idCheckFun()">중복체크</a></span> -->
									<input type="text" name="id" id="id" class="inputText" size="30" /> 
									<span class="buttonFuc">
										<a href="#" id="idCheck">중복체크</a>
									</span>
									<span id="rsp"></span>
									</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="password" name="password1" class="inputText" size="30" id="password1" /></td>
								</tr>
								<tr>
									<th>비밀번호 확인</th>
									<td>
										<input type="password" name="password2" class="inputText" size="30" id="password2"/>
										<input type="hidden" name="password" class="inputText" size="30" />
									</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>
										<label for="male"><input type="radio" class="inputRadio" name="gender" id="male" value="남자" />남</label>
										<label for="female"><input type="radio" class="inputRadio" name="gender" id="female" value="여자"/>여</label>
										<!-- radio타입이기 때문에 둘 중 하나만 선택되므로 name을 같게주는 것 가능  -->
									</td>
								</tr>
								<tr>
									<th>생년월일</th>
									<td>
										<input type="text" name="year" class="inputText" size="10" /> 년
										<input type="text" name="month" class="inputText" size="10" /> 월
										<input type="text" name="day" class="inputText" size="10" /> 일
										<input type="hidden" name="birth"/>
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td class="alignM">
										<p class="mgb3">
											<input type="text" name="post1" class="inputText" size="10" /> - <input type="text" name="post2" class="inputText" size="10" /> <span class="buttonFuc"><a href="javascript:sendPost()">우편번호</a></span>
										</p>
										<p class="mgb3">
											<input type="text" name="address1" class="inputText" size="50" readonly="readonly"/>
											<input type="text" name="address2" class="inputText" size="50" />
											<input type="hidden" name="address" />
										</p>
									</td>
								</tr>
								<tr>
								
									<th>이메일</th>
									<td>
										<input type="text" name="email1" class="inputText" size="12" />
										@
										<input type="text" name="email2" disabled="disabled" />
										<select id="sel" name="email3">
											<option selected="selected" value="empty">선택하세요.</option>
											<option value="direct">직접입력</option>
											<option value="gmail.com">gmail.com</option>
											<option value="naver.com">naver.com</option>
										</select>
										<input type="hidden" name="email" />
									</td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td>
										<input type="text" name="tel1" id="tel1" class="inputText" size="10" /> - 
										<input type="text" name="tel2" id="tel2" class="inputText" size="10" /> - 
										<input type="text" name="tel3" id="tel3" class="inputText" size="10" />
										<input type="hidden" name="tel" id="tel" />
									</td>
								</tr>
								<tr>
									<th>휴대폰번호</th>
									<td>
										<input type="text" name="cp1" class="inputText" size="10" /> - 
										<input type="text" name="cp2" class="inputText" size="10" /> - 
										<input type="text" name="cp3" class="inputText" size="10" />
										<input type="hidden" name="cp" />
									</td>
								</tr>
								</tbody>
							</table>
							</form>
							<div class="agr mgb15">
								<span class="button"><a href="#" id="send">등록</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>