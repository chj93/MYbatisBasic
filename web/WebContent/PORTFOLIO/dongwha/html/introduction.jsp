<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>기업소개</title>
<link rel="stylesheet" href="css/master.css"/>
<link rel="stylesheet" href="css/introduction.css" media="screen and (min-width: 1367px)" />
<link rel="stylesheet" href="css/introduction_tablet_mobile.css" media="screen and (max-width: 1367px)" />

<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>

	<input id="toggle_menu" type="checkbox" />
	<div id="wrap">
    
		<div class="skip">
			<a href="#main_nav">메인메뉴 바로가기</a>
			<a href="#contents_wrap">본문 바로가기</a>
			<a href="#main_footer">푸터 바로가기</a>
		</div>
        
        <header id="main_header">
			<div>
				<!--로고-->
				<h1 id="logo">
					<a href="index.jsp">동화제약</a>
				</h1>
				
				<!--언어선택 웹-->
				<nav id="lang_web">
					<a href="#" class="choice">KO</a>
					<span>|</span>
					<a href="#">EN</a>
				</nav>
				<!--스크롤시 메뉴 색상 바뀌게-->
				<script>
                    
                    $(function(){
                        setInterval(function(){
                            if($(window).scrollTop()>=110){
                               $("#main_header").addClass("scroll");
                            }else{
                               $("#main_header").removeClass("scroll");
                            }
                        },1000);
                    });
                </script>                
                
				<!--메인메뉴-->
                <script>
					$(function(){
						var mainNavAry=[false, false, false, false, false, false, false];
						$("#main_nav > div > ul > li").click(function(){
							var index=$(this).index();
							mainNavAry[index]=!mainNavAry[index];
							if(mainNavAry[index]){
								$(this).addClass("active");
							}else{
								$(this).removeClass("active");
							}
						});
					});
                </script>
				<label class="menu" for="toggle_menu">메인메뉴</label>
				<nav id="main_nav">
					<div>
						<!--언어선택 모바일-->
						<div id="navtop_m">
							<ul>
								<li><a href="#" class="choice">KO</a></li>
								<li><span>|</span></li>
								<li><a href="#">EN</a></li>
							</ul>
							<label class="menu_close" for="toggle_menu"></label>
						</div><!--#navtop_m-->
						
						<ul>
							<li>
								<a href="introduction.jsp">소개</a>
								<h3>소개</h3>
								<ul>
									<li><a href="introduction.jsp"  style="color: #933436">기업소개</a></li>
									<li><a href="#">CEO인사말</a></li>
									<li><a href="#">연혁</a></li>
									<li><a href="#">사가</a></li>
									<li><a href="#">동화 브로슈어</a></li>
									<li><a href="#">CI</a></li>
									<li><a href="#">연구소/공장</a></li>
									<li><a href="#">가족친화우수기업</a></li>
									<li><a href="#">사회공헌</a></li>
									<li><a href="#">오시는길</a></li>
									<li><a href="#">가족회사</a></li>
								</ul>
							</li>

							<li>
								<a href="#">채용</a>
								<h3>채용</h3>
								<ul>
									<li><a href="#">공지사항</a></li>
									<li><a href="#">인재상</a></li>
									<li><a href="#">인사제도</a></li>
									<li><a href="#">복리후생</a></li>
									<li><a href="#">채용안내</a></li>
									<li><a href="#">상시채용</a></li>
									<li><a href="#">지원결과 확인</a></li>
									<li><a href="#">자주하는 질문</a></li>
									<li><a href="#">채용 Q&#38;A</a></li>
								</ul>
							</li>

							<li>
								<a href="#">IR자료실</a>
								<h3>IR자료실</h3>
								<ul>
									<li><a href="#">공시</a></li>
									<li><a href="#">사업보고서</a></li>
									<li><a href="#">전자공고</a></li>
								</ul>
							</li>

							<li>
								<a href="#">연구</a>
								<h3>연구</h3>
								<ul>
									<li><a href="#">R&D 소개</a></li>
									<li><a href="#">R&D 뉴스</a></li>
									<li><a href="#">주요 연구실적</a></li>
									<li><a href="#">조직 및 업무</a></li>
									<li><a href="#">신약개발 주력분야</a></li>
									<li><a href="#">주요 연구과제</a></li>
									<li><a href="#">기술혁신 네트워크</a></li>
									<li><a href="#">글로벌 동화</a></li>


								</ul>
							</li>

							<li>
								<a href="#">제품</a>
								<h3>제품</h3>
								<ul> 
									<li><a href="#">제품 공지사항</a></li>
									<li><a href="#">신제품</a></li>
									<li><a href="#">전문의약품</a></li>
									<li><a href="#">일반의약품</a></li>
									<li><a href="#">의약외품ㆍ의료기기</a></li>
									<li><a href="#">건강기능식품</a></li>
									<li><a href="#">식품ㆍ음료</a></li>
									<li><a href="#">화장품</a></li>
								</ul>
							</li>

							<li>
								<a href="#">미디어</a>
								<h3>미디어</h3>
								<ul>
									<li><a href="#">동화뉴스</a></li>
									<li><a href="#">광고갤러리</a></li>
									<li><a href="#">뉴스레터</a></li>
									<li><a href="#">동화캐릭터</a></li>
								</ul>
							</li>

							<li>
								<a href="#">자율준수</a>
								<h3>자율준수</h3>
								<ul>
									<li><a href="#">자율준수 관리자</a></li>
									<li><a href="#">자율준수 프로그램</a></li>
									<li><a href="#">조직 및 운영</a></li>
									<li><a href="#">관련사이트</a></li>
									<li><a href="#">사이버 제보센터</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</nav><!--//#main_nav-->
			</div>
        </header>
		
		<section id="banner">
			<h3>
				좋은약이 아니면 만들지 마라.<br />
				동화는 동화식구 모두의 것이니 온 식구가 정성을 다해 다 같이 잘 살 수 있는 기업으로 이끌어라."<br />
				5대사장 보당 윤창식"
			</h3>
		</section>

		<div id="contents_wrap">
			<div class="title">
				<h4><a href="index.jsp">HOME</a>
				>
				<a href="introduction.jsp">기업소개</a>
				</h4>
				<h3>기업소개</h3>
			</div>

			<section id="introduction_wrap">
				<div id="ideology">
					<ul>
						<li class="hover_none">
							<h4>동화의 이념</h4>
						</li>
						<li class="hover_view">
							<a href="#" class="">동화의 이념 바로가기</a>
						</li>
					</ul>
					<a href="#" class="">동화의 이념 바로가기</a>
				</div>

				<div id="history" class="style1">
						<ul>
							<li class="hover_none">
								<h4 style="color:#000;">역사속의 동화</h4>
							</li>
							<li class="hover_view">
								<p>
									1897년 9월 25일 창립 이래 동일상호, 동일제품을 유지함으로써,<br />
									최고(最古)의 제조회사 및 최고(最古)의 제약회사가 되었으며,<br />
									국내 최초의 신약인 활명수도 국내 최장수 의약품으로 기록됐다.
								</p>
								<a href="#">역사속의 동화 바로가기</a>
							</li>
						</ul>
						<a href="#">역사속의 동화 바로가기</a>
					</div>

					<div id="gasong" class="style1">
							<ul>
								<li class="hover_none">
									<h4>가송재단</h4>
								</li>
								<li class="hover_view">
									<h6>사회와의 아름다운 동행</h6>
									<p>
										"기업 이윤은 사회에 환원해야 한다" 는 철학으로<br />
										가송 윤광열 동화약품 명예회장과 부인 김순녀 여사의 사재출연을 통해<br /> 
										2008년 4월 설립 되었습니다.
									</p>
									<a href="#">가송재단 소개 바로가기</a>
								</li>
							</ul>
							<a href="#">가송재단 소개 바로가기</a>
						</div>


			</section>

		</div>


        <!--footer-->
        <footer id="main_footer">
            <div id="logo_web"><!--웹용-->
            	<ul>
                	<li><a href="#"><img src="images/logo_bestfamily.png" alt="가족친화 우수기업"/></a></li>
                	<li><a href="#"><img src="images/logo_CP.png" alt="공정거래 자율준수 프로그램 AA등급"/></a></li>
                    <li><a href="#"><img src="images/logo_ISO.png" alt="ISO 9001(품질경영) 및 1SO 14001(환경경영) 인증"/></a></li>
                    <li><a href="#"><img src="images/logo_whalmyungsu.jpg" alt="활명수"/></a></li>
                    <li><a href="#"><img src="images/logo_each.jpg" alt="잇치"/></a></li>
                    <li><a href="#"><img src="images/logo_fucidin.jpg" alt="후시딘"/></a></li>
                    <li><a href="#"><img calss="last" src="images/logo_intrinsic.jpg" alt="인트린직"/></a></li>
                </ul>
            </div><!--#logo_web-->
			<a href="#top" class="gotop">TOP</a>
		
			<script>
				$(function(){
					var bCheck = false;
					$("#fms_m > div").click(function(){
						bCheck = !bCheck;

						if(bCheck == true){ 
							$(this).addClass("active");
						}else{
							$(this).removeClass("active");
						}

					});
				});
			</script>
            	
			<div id="fms_m"><!--모바일용-->
				<div>
					<h2>패밀리사이트 바로가기</h2>
					<ul>
						<li><a href="#">활명수</a></li>
						<li><a href="#">잇치</a></li>
						<li><a href="#">후시딘</a></li>
						<li><a href="#">인트린직</a></li>
					</ul>
				</div>
			</div><!--#fms_m-->
			
                <div id="f_address">
                	
                    <address>
                        <div id="post">
							<p>04637 서울특별시 중구 후암로 98 (남대문로5가 631), LG서울역빌딩 19층 </p>
							<p>대표이사 : 윤도준, 유광렬</p>
						</div>
						<div id="tel">
							<p>Tel : 02-2021-9300</p>  
							<span>|</span> 
							<p>Fax : 02-776-7873</p>
							<span>|</span> 
							<p>Mail : dongwha@dong-wha.co.kr</p>
						</div>
    				</address>
                    
                    <ul>
                        <li><a href="#"><img src="images/footer_instar.png" alt="인스타그램 바로가기" /></a></li>
                        <li><a href="#"><img src="images/footer_youtube.png" alt="유투브 바로가기" /></a></li>
                        <li><a href="#"><img src="images/footer_facebook.png" alt="페이스북 바로가기" /></a></li>
                    </ul>
                    
                    <p>Copyright(c) DONG WHA PHARM. CO., LTD.</p>
                </div>
        </footer>        
 	</div>
</body>
</html>
    