<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>동화약품</title>
<link rel="stylesheet" href="css/master.css"/>
<link rel="stylesheet" href="css/contentsStyle.css"/>
<link rel="stylesheet" href="css/flexslider.css" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-2.1.4.js"></script>
<script src="js/modernizr.js"></script>
<script defer src="js/jquery.flexslider-min.js"></script>
</head>
<body>
<%-- 
<jsp:include page=""></jsp:include>
 --%>
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
				
<!-- 				언어선택 웹
				<nav id="lang_web">
					<a href="#" class="choice">KO</a>
					<span>|</span>
					<a href="#">EN</a>
				</nav>
				 -->
				 
				<nav id="lang_web">
					<a href="#">로그인</a>
					<span>|</span>
					<a href="#">회원가입</a>
				</nav>
				
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
									<li><a href="introduction.jsp" style="color: #933436">기업소개</a></li>
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
        
        <!-- 배너 슬라이더 -->
		<script>
			$(function(){
				SyntaxHighlighter.all();
			});
			$(window).load(function(){
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					$('body').removeClass('loading');
					}
				});
			});
		</script>
		<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<img class="pc" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다" />
						<img class="tablet" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
						<img class="mobile" src="img/img01_m.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
					</li>
					<li>
						<img class="pc" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다" />
						<img class="tablet" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
						<img class="mobile" src="img/img01_m.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
					</li>
					<li>
						<img class="pc" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다" />
						<img class="tablet" src="img/img01.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
						<img class="mobile" src="img/img01_m.jpg" alt="활명수(活命水). 121년전, 궁중에서 태어나 죽어가는 사람들을 살리던 물. 조국을 위해 독립운동을 하고 목마름으로 고통받는 아프리카 아이들을 돕는 물. 나는 생명을 살리는 물이다"/>
					</li>
				</ul>
			</div>
		</section>
		<!-- Syntax Highlighter -->
		<script src="js/shCore.js"></script>
		<script src="js/shBrushXml.js"></script>
		<script src="js/shBrushJScript.js"></script>
                
        <!--메인페이지 콘텐츠 영역-->
        <div id="contents_wrap">
       		<!--동화의 제품정보-->
            <section id="product">
            	<div> 
                    <h2>동화의 제품정보</h2>
            <script>
			$(function(){
				var leftValue=0; 
				$("button.btn_next").click(function(){
					leftValue-=50;
					//console.log(leftValue);
					if(leftValue < -200){
						$(this).next(".product_wrap").children("ul").css({left:0});
						leftValue=-50;
					}
					$(this).next(".product_wrap").children("ul").stop().animate({left:leftValue+"%"},300); //넘어가는 초
				});
		
				$("button.btn_prev").click(function(){
					leftValue+=50;
					//console.log(leftValue);
					if(leftValue > 0){
						$(this).next("button.btn_next").next(".product_wrap").children("ul").css({left:-200+"%"});
						leftValue=-150;
					}
					$(this).next("button.btn_next").next(".product_wrap").children("ul").stop().animate({left:leftValue+"%"},300); //넘어가는 초
				});
				
				
				setInterval(function(){
					var heightValue=0;
					if($("body").width()>=1367){
						heightValue=890;
						$("#product, #product article, #product article > .product_wrap").css({height:heightValue});
					}else if($("body").width()>=768){
						heightValue=$("#product article").width()*0.8;
						$("#product").css({height:heightValue*2+100});
						$("#product article, #product article > .product_wrap").css({height:heightValue});
					}else{
						heightValue=$("#product article").width();
						$("#product").css({height:heightValue*2+100});
						$("#product article, #product article > .product_wrap").css({height:heightValue});
					}
				});
			});				
			</script>
            
                    <article id="product">
                    	<hgroup>
                            <h3>전문의약품</h3>
                            <a href="#" class="detail">자세히 보기 &#62; </a>
                        </hgroup>
                        <button class="btn_prev"></button>
                        <button class="btn_next"></button>
                        <div class="product_wrap">
                            <ul>
                                <li>
                                    <h4>라코르 정</h4>
                                    <a href="#"><img src="images/pro_medicine01.jpg" alt="라코르 정" /></a>
                                    <p>
                                    ※ 최초의 국산 ARB이뇨복합제 신약<br />
                                    효능 : 피마사르탄 단독 요법으로 혈압이 적절하게 조절되지 않는 본태성 고혈압
                                    </p>
                                </li>
                                
                                <li>
                                    <h4>동화플루엔현탁용분말</h4>
                                     <a href="#"><img src="images/pro_medicine02.jpg" alt="동화플루엔현탁용분말" /></a>
                                    <p>
                                    효능 : 생후 2주 이상 신생아를 포함한 소아및 성인의 인플루엔자 A 및 인플루엔자 B바이러스 감염증 치료 및 예방
                                    </p>
                                </li>   
                                
                                <li>
                                    <h4>동화 암로디핀베실산염 정</h4>
                                     <a href="#"><img src="images/pro_medicine03.jpg" alt="동화 암로디핀베실산염 정" /></a>
                                    <p>
                                    효능 : 고혈압, 관상동맥의 고정폐쇄(안정형협심증) 또는 관상혈관계의 혈관경련과 혈관수축(이형협심증)에 의한 심근성허혈증
                                    </p>
                                </li>  
                                
                                <li>
                                    <h4>헤어페시아 정</h4>
                                     <a href="#"><img src="images/pro_medicine04.jpg" alt="헤어페시아 정" /></a>
                                    <p>
                                    효능 : 성인남성(만 18 ∼ 41세)의 남성형 탈모증(안드로겐 탈모증)의 치료
                                    </p>
                                </li> 
                                <li>
                                    <h4>라코르 정</h4>
                                    <a href="#"><img src="images/pro_medicine01.jpg" alt="라코르 정" /></a>
                                    <p>
                                    ※ 최초의 국산 ARB이뇨복합제 신약<br />
                                    효능 : 피마사르탄 단독 요법으로 혈압이 적절하게 조절되지 않는 본태성 고혈압
                                    </p>
                                </li>
                                
                                <li>
                                    <h4>동화플루엔현탁용분말</h4>
                                     <a href="#"><img src="images/pro_medicine02.jpg" alt="동화플루엔현탁용분말" /></a>
                                    <p>
                                    효능 : 생후 2주 이상 신생아를 포함한 소아및 성인의 인플루엔자 A 및 인플루엔자 B바이러스 감염증 치료 및 예방
                                    </p>
                                </li>                            
                            </ul>
                        </div><!--/.product_wrap-->
                    </article>
                    
                    <article>
                    	<hgroup>
                            <h3>일반의약품</h3>
                            <a href="#" class="detail">자세히 보기 &#62; </a>
                        </hgroup>
                        <button class="btn_prev"></button>
                        <button class="btn_next"></button>
                        <div class="product_wrap">
                            <ul>
                                <li>
                                    <h4>후시딘</h4>
                                     <a href="#"><img src="images/medicine01.jpg" alt="후시딘" /></a>
                                    <p>
                                    효능 : 농피증, 화상, 외상, 여드름, 봉합창, 식피창에 의한 2차 감염
                                    </p>
                                </li>
                                
                                <li>
                                    <h4>잇치</h4>
                                     <a href="#"><img src="images/medicine02.jpg" alt="잇치" /></a>
                                    <p>
                                    효능 : 치은염, 치조 농루에 의한 여러 증상(잇몸의 발적, 부기, 출혈, 고름 등)의 완화
                                    </p>
                                </li>   
                                
                                <li>
                                    <h4>판콜 내복액</h4>
                                     <a href="#"><img src="images/medicine03.jpg" alt="판콜 내복액" /></a>
                                    <p>
                                    효능 : 감기의 제증상(콧물, 코막힘, 재채기, 인후통, 기침, 가래, 오한, 발열, 두통, 관절통, 근육통)의 완화
                                    </p>
                                </li>  
                                
                                <li>
                                    <h4>플로라딘 연질캡슐</h4>
                                     <a href="#"><img src="images/medicine04.jpg" alt="플로라딘 연질캡슐" /></a>
                                    <p>
                                    효능 : 알레르기성 비염(코염) 증상(재채기, 콧물, 가려움, 눈의 작열감(화끈감))의 일시적인 완화
                                    </p>
                                </li>
                                <li>
                                    <h4>후시딘</h4>
                                     <a href="#"><img src="images/medicine01.jpg" alt="후시딘" /></a>
                                    <p>
                                    효능 : 농피증, 화상, 외상, 여드름, 봉합창, 식피창에 의한 2차 감염
                                    </p>
                                </li>
                                
                                <li>
                                    <h4>잇치</h4>
                                     <a href="#"><img src="images/medicine02.jpg" alt="잇치" /></a>
                                    <p>
                                    효능 : 치은염, 치조 농루에 의한 여러 증상(잇몸의 발적, 부기, 출혈, 고름 등)의 완화
                                    </p>
                                </li>                                                        
                            </ul>
                        </div><!--/.product_wrap-->
                    </article>  
                </div>          
            </section><!--#product-->
            

            
            
            <!--최고의 동화제약-->
            <section id="glance">
            		<h2>최고의 동화제약</h2>
                    <ul>
                        <li><img src="images/glance01.png" alt="동화. 민족이 합심하면 잘 살수 있다.최고의 민족기업"/></li>
                        <li><img src="images/glance02.png" alt="121년. 대한민국 제약산업의 시작"/></li>
                        <li><img src="images/glance03.png" alt="no.1 브랜드파워"/></li>
                        <li><img src="images/glance04.png" alt="AA등급. CP평가 산업계최고수준 획득"/></li>
                    </ul>
                
            </section>
            <!--동화의 소식을 전합니다-->
            <section id="news">
            	<h2>동화의 소식을 전합니다.</h2>
                
            	<div>
                    
                    <article id="news_con1" class="show">
                    	<a href="#"><img src="images/news01.jpg" alt="동화약품, 화장품 ‘활명’제품 사진" /></a>
                        <h3>
                        동화약품, 화장품 ‘활명’<br />
						기초 스킨케어라인 출시
                        </h3>
                        <span></span>
                        <p>
                        고대 한의학에서부터 다양하게 응용되어 온 WM1897-P5™을 최상의 비율로 배합하여 건강한 피부 선사
                        </p>
                    </article>
                    
                    <article id="news_con2">
                    	<a href="#"><img src="images/news02.jpg" alt="제6회 ‘여름생색’展에서 입선 및 수상작" /></a>
                        <h3>
                        부채표 가송재단-동화약품,<br />
                        ‘2018 가송 예술상’ 시상식 개최
                        </h3>
                        <span></span>
                        <p>
                        대상, 강태환 작가의 &#60;비움공간&#62; 선정<br />
						제6회 ‘여름생색’展에서 입선 및 수상작 전시
                        </p>
                    </article>
                    
                    <article id="news_con3">
                    	<a href="#"><img src="images/news03.jpg" alt="수룡2리마을 어서오십시오" /></a>
                        <h3>
                        수룡2리 마을(충북 충주시 노은면)<br />
						“또 하나의 마을 만들기’ 협약
                        </h3>
                        <span></span>
                        <p>
                        기업의 사회적 책임과 역할을 다하기 위해 <br />
						다양한 교류활동을 통한 지역 농가와의 상생 도모 
                        </p>
                    </article> 
                <!--모바일용-->
                <button class="btn_prev"></button>
                <button class="btn_next"></button> 
                <!--웹용-->
                <a href="#" class="detail">자세히보기 &#62; </a>  
                                                           
                </div>
            </section>
            
             <script>
				$(function(){
					var index=0;
					

					$("#news > div > button.btn_next").click(function(){
                        index++;
						if(index>2){
							index=0;	
						}
						show();	
                    });
					$("#news > div > button.btn_prev").click(function(){
                        index--;
						if(index<0){
							index=2;	
						}
						show();	
                    });
					
					function show(){
						$("#news > div > article").removeClass("show");
						$("#news > div > article").eq(index).addClass("show");	
					}
				});
			</script>
            
        </div><!--#contents_wrap-->
        
        
        
            
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
