<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>SIST 렌트카</title>
<link rel="stylesheet" href="CSS/master.css" />
<link rel="stylesheet" href="CSS/contentsStyle.css" />
<link rel="stylesheet" href="CSS/mainSection.css" />
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-2.1.4.js"></script>
<script src="js/modernizr.js"></script>

<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700" rel="stylesheet">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css" />
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="CSS/style.css" />


<style>
</style>
</head>
<body>

<input id="toggle_menu" type="checkbox" />

<div id="wrap">

	<!--바로가기메뉴-->
	<div class="skip">
		<a href="#contents_wrap">본문 바로가기</a>
		<a href="#main_nav">메인메뉴 바로가기</a>
 		<a href="#main_footer">푸터 바로가기</a>
    </div>
    
	<!--pc용, 스크롤 내렸을 때 나타나는 메인메뉴-->
    <script>
    	$(function(){
			setInterval(function(){
				if($(window	).scrollTop()>=110){
					$("#main_nav").animate({top:0},500);
				}else{
					$("#main_nav").animate({top:-80},500);
				}
			},1000);
		});
    </script>
	<nav id="main_nav">
    	<h2 class="blind">메인메뉴</h2>
    	<ul>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        </ul>
    </nav>
    
	<!--헤더 : 토글메뉴, 로고, 토글검색-->
	<header id="main_header">
    	<label class="toggle_menu" for="toggle_menu"></label>
        <h1 id="logo"><a href="index.html">SIST렌트카</a></h1>
        <nav id="top_nav">
        	<ul>
            	<li>
                	<label class="search" for="search"></label>
                </li>
                <li class="lang_wrap">
                	<a href="#">LIGIN</a>
                    <span>&#124;</span>
                    <a href="#">JOIN</a>
               	</li>
        	</ul>
        </nav>
    </header>
    
	<!--검색토글 클릭시 검색창-->
    <input id="search" type="checkbox"/>
    <div class="search_wrap">
    	<form>
        	<label class="btn_close" for="search"></label>
        	<fieldset>
            	<input type="text" class="text" placeholder="검색어를 입력하세요."/>
                <input type="image" class="btn_search" src="images/btn_search.png" alt="검색"/>
            </fieldset>
        </form>
    </div>
    
	<!--메뉴토글 클릭시 토글메뉴-->
    <div id="toggle_nav_wrap">
    	<h2 class="blind">메인메뉴</h2>
        <label class="menu_close" for="toggle_menu"></label>
        <ul id="toggle_nav">
        	<li><a href="#">메뉴</a></li>
        	<li><a href="sub.html">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        	<li><a href="#">메뉴</a></li>
        </ul>
        <div id="lang">
            <a href="#">LOGIN</a>
            <span>&#124;</span>
            <a href="#">JOIN</a>
        </div>
        <label class="menu_bg_close" for="toggle_menu"></label>
   </div><!--/toggle_nav-->
   
	<!--BG, 임시예약 영역-->
	<section id="mainSection">
	    <div class="bg">
              <img class="pc" src="img/img01.jpg">
<!--               <img class="tablat" src="img/img01_t.jpg">
              <img class="mobile" src="img/img01_m.jpg"> 
-->
	    </div>
	    
	    <div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<form>
							<div id="date" class="row no-margin">
								<div class="col-sm-6 fl-l">
									<div class="form-group">
										<span class="form-label">대여일</span>
										<div>
											<span>2020년</span>
											<h3>05/12</h3>
											<span>화요일</span>
											<p>09:30</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 fl-r">
									<div class="form-group">
										<span class="form-label">반납일</span>
										<div>
											<span>2020년</span>
											<h3>05/16</h3>
											<span>토요일</span>
											<p>14:30</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row no-margin">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">대여지점</span>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">반납지점</span>
										<select class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<span class="form-label">옵션</span>
								<div id="labelStyle">
									<label><input type="checkbox" value="01">대형</label>
									<label><input type="checkbox" value="01">중형</label>
									<label><input type="checkbox" value="01">소형</label>
								</div>
							</div>
							<!-- 
							<div class="form-group">
								<span class="form-label">Email</span>
								<input class="form-control" type="email" placeholder="Enter your email">
							</div>
							<div class="form-group">
								<span class="form-label">Phone</span>
								<input class="form-control" type="tel" placeholder="Enter your phone number">
							</div> 
							-->
							<div class="form-btn">
								<button class="submit-btn">Book Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--     
	</section>
	
	메인페이지 콘센츠 영역
   <div id="contents_wrap">    
       <section id="visual_image">
            <div class="blind">
                <h2>동아제약</h2>
                <h3>DONG-A PHARM</h3>
                <p>건강한 생활, 건강한 미래 동화제작이 함께 합니다</p>
            </div>
            <a href="#" class="btn_view">자세히 보기 </a>
       </section>
       
       <section id="product">
            <h3>제품소개</h3>
            <figure>
                <img src="images/produt_img.jpg" alt="제품이미지" />
            </figure>
            <ul>
                <li class="p1"><a href="#"><img src="images/produt_bacchusD.jpg" alt="Bacchus-D"></a></li>
                <li class="p2"><a href="#"><img src="images/produt_bacchusF.jpg" alt="Bacchus-F"></a></li>
                <li class="p3"><a href="#"><img src="images/produt_bacchusA.jpg" alt="Bacchus DeCafe-a"></a></li>
                <li class="p4"><a href="#"><img src="images/produt_benachio.jpg" alt="베나치오"></a></li>
                <li class="p5"><a href="#"><img src="images/produt_gagreen.jpg" alt="가그린"></a></li>
                <li class="p6"><a href="#"><img src="images/produt_ibong.jpg" alt="아이봉"></a></li>
            </ul>
             <a href="#" class="btn_view">자세히 보기 </a>
       </section>
       
       <section id="social">
            <h3>사회공헌</h3>
                <img class="pc" src="images/visualImage.jpg" alt="국토대장정 PC용 사진">
                <img class="tablet" src="images/visualImage_t.jpg" alt="국토대장정 tabletpc용 사진">
                <img class="mobile" src="images/visualImage_m.jpg" alt="국토대장정 mobile용 사진">
           
       </section>
       
       <section id="history">
            <h3>대학생 국토대장정</h3>
            <h2>동아제약 대학생 국토대장정</h2>
            <h1>역사관</h1>
            <p>동아제약 대학생 국토대장정의 오랜 역사를 한눈에 확인해보세요</p>
            
            <div id="poster">
                <div class="imgs_wrap">
                    <ul class="imgs">
                        <li><a href="#"><img src="images/19.jpg" alt="국토대장정 제19회"></a></li>
                        <li><a href="#"><img src="images/18.jpg" alt="국토대장정 제18회"></a></li>
                        <li><a href="#"><img src="images/17.jpg" alt="국토대장정 제17회"></a></li>
                        <li><a href="#"><img src="images/16.jpg" alt="국토대장정 제16회"></a></li>
                        <li><a href="#"><img src="images/15.jpg" alt="국토대장정 제15회"></a></li>
                        <li><a href="#"><img src="images/14.jpg" alt="국토대장정 제14회"></a></li>
                        <li><a href="#"><img src="images/13.jpg" alt="국토대장정 제13회"></a></li>
                        <li><a href="#"><img src="images/12.jpg" alt="국토대장정 제12회"></a></li>
                        <li><a href="#"><img src="images/11.jpg" alt="국토대장정 제11회"></a></li>
                        <li><a href="#"><img src="images/10.jpg" alt="국토대장정 제10회"></a></li>
                        <li><a href="#"><img src="images/09.jpg" alt="국토대장정 제9회"></a></li>
                        <li><a href="#"><img src="images/08.jpg" alt="국토대장정 제8회"></a></li>
                        <li><a href="#"><img src="images/07.jpg" alt="국토대장정 제7회"></a></li>
                        <li><a href="#"><img src="images/06.jpg" alt="국토대장정 제6회"></a></li>
                        <li><a href="#"><img src="images/05.jpg" alt="국토대장정 제5회"></a></li>
                        <li><a href="#"><img src="images/04.jpg" alt="국토대장정 제4회"></a></li>
                        <li><a href="#"><img src="images/03.jpg" alt="국토대장정 제3회"></a></li>
                        <li><a href="#"><img src="images/02.jpg" alt="국토대장정 제2회"></a></li>
                        <li><a href="#"><img src="images/01.jpg" alt="국토대장정 제1회"></a></li>
                    </ul>
                </div>
                    <div class="btn_prev"></div>
                    <div class="btn_next"></div>
            </div>/poster
       </section>
       <script>
	   $(function(){
			var leftValue=0;
			// .btn_next를 클릭했을때 
			$("#poster > .btn_next").click(function(){
			//#poster > .imgs_wrap > ul.imgs 속성중 left값이 175 만큼 이동하도록
				leftValue-=175;
				$("#poster > .btn_prev").css({background:"url(images/btn_prev_a.png)"});
			//조건) 총 19개중 보여지는 이미지 갯수만큼 빼주고 x175, 왼쪽으로 이동시 - 
				var maxLeft=$("#poster > .imgs_wrap > ul.imgs").width()-$("#poster > .imgs_wrap").width();
				if(leftValue <= -maxLeft){
					leftValue = -maxLeft;
					$("#poster > .btn_next").css({background:"url(images/btn_next_n.png)"});
				}
				
				$("#poster > .imgs_wrap > ul.imgs").stop().animate({left:leftValue},500);
			});
			// .btn_prev를 클릭했을때
			$("#poster > .btn_prev").click(function(){
			// -175 만큼 이동하도록
				leftValue+=175;
				$("#poster > .btn_next").css({background:"url(images/btn_next_a.png)"});
				
				if(leftValue >=0){
					leftValue = 0;
					
					$("#poster > .btn_prev").css({background:"url(images/btn_prev_n.png)"});
				}
				$("#poster > .imgs_wrap > ul.imgs").stop().animate({left:leftValue},500);
			});			
		});		
	   </script>
       
       
   </div>/contents_wrap

	푸터 영역   
   <footer id="main_footer">
		<div id="family_site">
        	<h3 class="f_title">Family Site </h3>
            <ul>
                <li>
                    <dl>
                        <dt>지주회사</dt>
                        <dd><a href="#">동아쏘시오홀딩스</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>식음료</dt>
                        <dd><a href="#">동아오츠카</a></dd>
                        <dd><a href="#">동천수</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>제약</dt>
                        <dd><a href="#">동아ST</a></dd>
                        <dd><a href="#">동아제약</a></dd>
                        <dd><a href="#">에스티팜</a></dd>
                        <dd><a href="#">DMB</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>물류</dt>
                        <dd><a href="#">용마로지스</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>병유리</dt>
                        <dd><a href="#">수석</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>기계부품</dt>
                        <dd><a href="#">한국신동공업</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>정보통신</dt>
                        <dd><a href="#">DA인포메이션</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>건설</dt>
                        <dd><a href="#">철근종합건설</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>해외</dt>
                        <dd><a href="#">Dong-A America Co.</a></dd>
                        <dd><a href="#">소주동아음료유한공사</a></dd>
                        <dd><a href="#">Dong-A Participacoes Ltda</a></dd>
                    </dl>
                </li>
            </ul>
        </div> 
        
        <div id="brand_site">
        	<h3 class="f_title">Brand Site</h3>
            <ul>
                <li><a href="#">가그린</a></li>
                <li><a href="#">박카스</a></li>
                <li><a href="#">모닝케어</a></li>
                <li><a href="#">써큐란</a></li>
                <li><a href="#">템포</a></li>
                <li><a href="#">비겐크림톤</a></li>
                <li><a href="#">국토대장정</a></li>
                <li><a href="#">환경생명교실</a></li>
                <li><a href="#">AD CAFE</a></li>
            </ul>            
        </div>  
        
        <div id="policy">
        	<ul>
            	<li><a href="#">개인정보취급방침</a></li>
                <li class="last"><a href="#">인재개발원</a></li>
            </ul>
        </div>
        
        <div id="f_address">
            <h1 id="f_logo"><img src="images/logo_footer.png" alt="동아제약 로고"/></h1>
            <address>
                <p>서울시 동대문구 천호대로 64 TEL.02 - 920 - 8112</p>
                <p class="copyright">Copytight DONG-A PHARM. All rights reserved </p>
            </address>
            <div id="wa"><a href="#"><img src="images/award.jpg" alt="WEB AWARD"/></a></div>
   </footer>
 --></div><!--/wrap-->

</body>
</html>
