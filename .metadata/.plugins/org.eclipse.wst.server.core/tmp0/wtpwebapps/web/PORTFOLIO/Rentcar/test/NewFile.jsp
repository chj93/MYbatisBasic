<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=1200">
<meta property="og:image" content="https://www.jejupassrent.comstatic/images/seo/jejupassrent_basic5.png">
<title>제주패스렌트카 - 제주도 렌트카 실시간 가격비교</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/style.css">
</head>
<script type="text/javascript" src="static/js/jquery-ui.js"></script>
<script src="static/js/jquery.js"></script>
<script src="static/js/style.js"></script>
<script src="static/js/affix.js"></script>
<script src="static/js/collapse.js"></script>
<script src="static/js/modal.js"></script>
<script src="static/js/tooltip.js"></script>
<script src="static/js/popover.js"></script>
<script src="static/js/jquery.matchHeight.js"></script>
<body class="home">	
<style>
.nav-gnb > li {
margin: 0 15px !important;
}
@media (min-width: 1481px) {
.nav-gnb > li {
margin: 0 30px !important;
}
}
.nav-gnb > li:first-child {
margin-left :0 !important;
}

.main_menu {
height: 533px !important;
background-position: 280px 345px !important;
}
</style>
<a href="#container" class="out-screen">콘텐츠 바로가기</a>
<div id="top"></div>

		<div class="navbar">
		<div class="content-wrap">
			<div class="navbar-brand">
			<a href="#">
				<!-- 이미지 수정 -->
				<img src="static/images/logo_p_original.png" alt="로고이미지">
			</a>
		</div>
		<ul class="nav nav-gnb">
		<li><a href="#" data-menu="search">메뉴1</a></li>
		<li><a href="#" data-menu="premium">메뉴2</a></li>
		<li><a href="#" data-menu="mypage">메뉴3</a></li>
		<li><a href="#" data-menu="event">메뉴4</a></li>
		</ul><!--//nav-gnb-->

		<div class="nav-right">
		<ul>
			<li><a href="/home/login/loginForm.do">로그인</a></li>
			<li><a href="/home/join/joinForm.do">회원가입</a></li>
		</ul>
		</div><!--//nav-right-->
		
		<div class="close_btn">
			<a href="javascript:void(0)"><img src="static/images/main_menu_btn_close.png" /></a>
		</div>
		<div class="close_btn_show">
			<a href="javascript:void(0)">전체<br>메뉴</a>
		</div>
		<div class="main_menu hidden">
		<ul class="menu_bg">
		<li class="menu_title "><a href="/home/search/list.do">최저가 예약</a></li>
		<li class="menu_title padding_b margin_bottom"><a href="/home/search/list.do?insrncApplcCode=05">프리미엄 예약</a></li>
		<li class="p_style">
		<span class="fl"><a href="/home/search/list.do?insrncApplcCode=05">프리미엄 예약</a></span>
		<span class="fl "><a href="/home/premiumGuide/view.do">프리미엄 예약 서비스</a></span>
		<!-- 				<span class="fl"><a href="javascript:alert('준비중입니다');">렌터카 픽업서비스</a></span> -->
		<span class="fl"><a href="javascript:alert('준비중입니다');">와이파이</a></span>
		<span class="fl"><a href="javascript:alert('준비중입니다');">제주패스 웰컴 박스</a></span>
		</li>
		<li class="menu_title padding_bottom0"><a href="/home/mypage/myResvListForm.do">예약확인</a></li>
		<li class="p_style">
		<span class="fl"><a href="/home/mypage/myResvListForm.do" data-menu="mypage">예약내역</a></span>
		<span class="fl"><a href="/home/coupon/myCoupon.do">쿠폰함</a></span>
		<span class="fl"><a href="/home/mypage/myPageInfo.do">내정보</a></span>
		</li>
		<li class="menu_title "><a href="/home/entrps/list.do">이용후기</a></li>
		<li class="menu_title  padding_top0"><a href="/home/notice/list.do">고객센터</a></li>
		<li class="p_style">
		<span class="fl"><a href="/home/notice/list.do">공지사항</a></span>
		<span class="fl"><a href="/home/faq/list.do">자주찾는질문</a></span>
		<span class="fl"><a href="/home/report/registerForm.do">최저가 보장제</a></span>
		
		</li>
		<li class="menu_title "><a href="/home/benefit/view.do">이용혜택</a></li>
		<li class="menu_title  padding_top0"><a href="/home/event/list.do">이벤트</a></li>
		</ul>
		</div>
		<!-- ...리뉴얼 메뉴 추가, 2019-05-13, zhuyeel -->
		</div><!--//content-wrap-->
		</div><!--//navbar-->








  

<script>
$(document).ready(function() {
	setTimeout(function() {
		$( ".bubble" ).animate({
			bottom:"70px",
			opacity:1
		}, 400, function () {
	        $(this).css( "display", "block" )
	    })
	}, 60000);	//60000 1분
})
</script>

<!-- <div class="bubble">
	<p>예약에 어려움이 있으신가요?<br><br>어디서든 쉽고 편리한 전화예약 서비스를 이용해보세요.</p>
	<div>전화예약 <span>1544-0445</span></div>
	<button type="button"></button>
</div> -->

<script>
	$( ".bubble button" ).click( function(){
		$( this ).parent().hide()
	})
</script>
<!--//bubble-->
<div id="container">
	







  
<script type="text/javascript">
	jQuery(function() {

		//옵션 버튼 아이디 변경
		jQuery("input[name='primeSrvcCode']").each(function(i) {
			jQuery(this).attr("id", "primeSrvcCode_"+i);
			jQuery(this).parent().attr("for", "primeSrvcCode_"+i);
		});

		fncInsrncApplcCodeDraw(); //보험선택 그리기
		fncVhctySeCode(); //차종선택 그리기

		//보험선택 클릭
		jQuery("input[name='insrncApplcCode']").bind("click", function() {
			fncInsrncApplcCodeDraw(); //보험선택 그리기
		});

		//차종선택 클릭
		jQuery("input[name='vhctySeCodes']").bind("click", function() {
			if(jQuery("input[name='vhctySeCodes']:checked").size() == 0) {
				return false;
			}
			fncVhctySeCode(); //차종선택 그리기
		});

		//제조사 클릭
		jQuery("input[name='makrCodes']").bind("click", function() {
			fncMakrCode(); //제조사 그리기
		});

		//연료 클릭
		jQuery("input[name='fuelCode']").bind("click", function() {
			fncFuelCode(); //제조사 그리기
		});

		//정원 클릭
		jQuery("input[name='tkcarNmpr']").bind("click", function() {
			fncTkcarNmpr(); //정원 그리기
		});

		//연식 클릭
		jQuery("input[name='srvcCode01']").bind("click", function() {
			fncSrvcCode01(); //연식 그리기
		});

		//옵션 클릭
		jQuery("input[name='primeSrvcCode']").bind("click", function() {
			fncPrimeSrvcCode(); //옵션 그리기
		});

		//기타 서비스 클릭
		jQuery("input[name='etcSrvcCode']").bind("click", function() {
			fncEtcSrvcCode(); //기타 서비스 그리기
		});

	});

	//보험선택 그리기
	function fncInsrncApplcCodeDraw() {
		jQuery("input[name='insrncApplcCode']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='insrncApplcCode']:checked").parent().addClass("selected"); //보험선택
	}

	//차종선택 그리기
	function fncVhctySeCode() {
		jQuery("input[name='vhctySeCodes']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='vhctySeCodes']:checked").parent().addClass("selected"); //차종선택
	}

	//제조사 그리기
	function fncMakrCode() {
		jQuery("input[name='makrCodes']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='makrCodes']:checked").parent().addClass("selected");
	}

	//연료 그리기
	function fncFuelCode() {
		jQuery("input[name='fuelCode']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='fuelCode']:checked").parent().addClass("selected");
	}

	//정원 그리기
	function fncTkcarNmpr() {
		jQuery("input[name='tkcarNmpr']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='tkcarNmpr']:checked").parent().addClass("selected");
	}

	//연식 그리기
	function fncSrvcCode01() {
		jQuery("input[name='srvcCode01']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='srvcCode01']:checked").parent().addClass("selected");
	}

	//옵션 그리기
	function fncPrimeSrvcCode() {
		jQuery("input[name='primeSrvcCode']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='primeSrvcCode']:checked").parent().addClass("selected");
	}

	//기타 서비스 그리기
	function fncEtcSrvcCode() {
		jQuery("input[name='etcSrvcCode']").parent().parent().find("label").removeClass("selected");
		jQuery("input[name='etcSrvcCode']:checked").parent().addClass("selected");
	}

	//차량 검색
	function fncSearchRentCar() {

		if(jQuery("input[name='insrncApplcCode']:checked").size() == 0) {
			alert("보험을 선택해 주세요.");
			return;
		}

		if(jQuery("input[name='vhctySeCodes']:checked").size() == 0) {
			alert("차종을 선택해 주세요.");
			return;
		}

		var vhctySeCode = "";
		var idx = 0;
		jQuery("input[name='vhctySeCodes']").each(function() {
			if(jQuery(this).is(":checked")) {
				if(idx > 0) {
					vhctySeCode += ","
				}
				vhctySeCode += jQuery(this).val();
				idx++;
			}
		});

		jQuery("#vhctySeCode").val(vhctySeCode);
		//jQuery("input[name='vhctySeCodes']").prop("checked", false);

// 	if(confirm("20시 이후 차량 인수 또는 반납시 배차비가 발생할 수 있습니다.")){
// 	}

		if(window.sessionStorage) {
			sessionStorage.clear();
		}

		jQuery("form[name='leftForm']").attr("method", "POST");
		jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
		jQuery("form[name='leftForm']").submit(true);

	}

	//마이페이지 이동
	function fncGoMypage() {
		location.href = "/home/mypage/myResvListForm.do";
	}

	//베네핏 이동
	function fncGoBenefit() {
		location.href = "/home/benefit/view.do#useBenefitBox3";
	}
	
	// #검색 리스트 선택
	function fncSelectHash() {
		$(".hashSearchList li ").click(function() {
			if($(".hashSearchList li ").hasClass('selected')){
				$(".hashSearchList li ").removeClass('selected');
			}
				$(this).addClass('selected');
		});
	}

	$(document).on('ready', function() {
		$('#carousel-review').slick({
			dots: true
		});
		
		fncSelectHash(); // #검색
		
		$slider = $('#carousel-banner');

		$('#carousel-banner').slick({
			dots: true,
			fade: false,
			//lazyLoad: 'ondemand',
			autoplaySpeed: 5000,
	        speed: 500,
	   		autoplay: true,
			customPaging: function(slick,i){
				var pageTitle = slick.$slides.eq(i).find('span.slideTitle').html();
				return '<span>' + pageTitle + '</span>';
			}
	   	});

		var firstBgcolor = $('.slick-current').data('backcolor');

		if(firstBgcolor) {
			$(".bannerBg").css('background-color', firstBgcolor).fadeIn(200);
		} else {
			$(".bannerBg").css('background-color', '#fff').fadeIn(200);
		}

		/*슬라이드를 변경한 후 발생*/
		$("#carousel-banner").on('afterChange',function(event, slick, currentSlide, nextSlide) {
			var bgcolor = $('.slick-current').data('backcolor');

			if(bgcolor) {
				$(".bannerBg").css('background-color', bgcolor).fadeIn(200);
			} else {
				$(".bannerBg").css('background-color', '#fff').fadeIn(200);
			}
		});

		$('.multiple-items').slick({
			dots: true,
			infinite: true,
			slidesToShow: 3,
			slidesToScroll: 3
		});

		$('.hashSearch > ul > li:first-child').click();
		$(".hashSearchListClass").on("click",function() {

			var hashSearchId = $('.hashSearchList li.selected').attr('id');

			if(!hashSearchId) {
				alert('검색 조건을 클릭하세요.');
			}

			if(hashSearchId === 'noSmoke') {
				location.href = '/home/search/list.do?dataFillter7=201&vhctySeCode=01,02,07,03,04,05,06,08,09&insrncApplcCode=02';
			} else if(hashSearchId === 'couple') {
				location.href = '/home/search/list.do?dataFillter2=06&vhctySeCode=04,09&insrncApplcCode=02';
			} else if(hashSearchId === 'friend') {
				location.href = '/home/search/list.do?vhctySeCode=05,06&insrncApplcCode=02';
			} else if(hashSearchId === 'alone') {
				location.href = '/home/search/list.do?vhctySeCode=01,02&insrncApplcCode=02';
			} else if(hashSearchId === 'withElecCar') {
				location.href = '/home/search/list.do?vhctySeCode=08&insrncApplcCode=02';
			}
		});

	});
	function clickLog(msrl, url) {
		$.ajax({
			type: "POST",
			url: "/smart/banner/clickInsert.do",
			async: false,
			data: {
				msrl: msrl,
				url: url
			},
			success: function (data) {
                
            },
            error: function (e) {
		        console.log("ERROR: ", e);
    		},
    		done: function (e) {
    			console.log("DONE");
    		}
		});
	}
</script>

<script src="static/js/slick.min.js"></script>

<script language='javascript'>var _bAce25=[];function ACEL_TRACKING_25(mode,ename,tgurl,tg){ var ACEL_img_25 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_25.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce25.push(ACEL_img_25);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_25=='function') ACEL_TRACKING_25('BV','25');</script>
<script language='javascript'>var _bAce26=[];function ACEL_TRACKING_26(mode,ename,tgurl,tg){ var ACEL_img_26 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_26.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce26.push(ACEL_img_26);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_26=='function') ACEL_TRACKING_26('BV','26');</script>
<script language='javascript'>var _bAce27=[];function ACEL_TRACKING_27(mode,ename,tgurl,tg){ var ACEL_img_27 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_27.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce27.push(ACEL_img_27);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_27=='function') ACEL_TRACKING_27('BV','27');</script>
<script language='javascript'>var _bAce28=[];function ACEL_TRACKING_28(mode,ename,tgurl,tg){ var ACEL_img_28 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_28.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce28.push(ACEL_img_28);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_28=='function') ACEL_TRACKING_28('BV','28');</script>
<script language='javascript'>var _bAce29=[];function ACEL_TRACKING_29(mode,ename,tgurl,tg){ var ACEL_img_29 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_29.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce29.push(ACEL_img_29);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_29=='function') ACEL_TRACKING_29('BV','29');</script>
<script language='javascript'>var _bAce30=[];function ACEL_TRACKING_30(mode,ename,tgurl,tg){ var ACEL_img_30 = new Image();var ACED_D = 'gtm1.acecounter.com';var ACED_H=(location.protocol=='https:')?'https://'+ACED_D+':5443':'http://'+ACED_D+':5757';ACEL_img_30.src = ACED_H + '/EMAM?euid=AH5A43445176807&ename='+ename+'&fdv='+mode+'&RID='+Math.random()+'&';if(typeof(Array.prototype.push)!='undefined'){_bAce30.push(ACEL_img_30);}; if(typeof tg=='undefined'){ var tg='';};if(typeof tga=='undefined'){ var tga='';}; if(typeof tgurl=='undefined'){ var tgurl='';}; if(mode != 'BV'){ if(tgurl!=''){ if( tg!=''){window.open(tgurl,tg,tga);}else{location.href=tgurl;};};};};</script><script>if(typeof ACEL_TRACKING_30=='function') ACEL_TRACKING_30('BV','30');</script>

<style>
	.home #container > .top .single-item .slick-dots > li { border: none; }
	@media (min-width: 1680px) {
		.home #container > .top .single-item .slick-dots {
			right: 50% !important;
			margin-right: 0 !important;
		}
	}
	.home #container > .top .single-item .slick-dots {
		right: 50% !important;
		margin-right: 0 !important;
	}
</style> <!-- 20190404 -->

<div class="top">

	<div class="bannerBg"></div>
	<div class="mainBanners" style="position:relative;width:1280px;height:470px;margin:0 auto">
		<div id="carousel-banner" class="slider single-item img-wrap-responsive">

			
				<div class="slideImg" data-backcolor="#21C4E6" onclick="clickLog(7,'/home/notice/view.do?noticeSn=34052629');">
					<a href="/home/notice/view.do?noticeSn=34052629">
						<img src="/util/file/noTokenDownload.do?fileSn=35334951" width="772px" height="470px" alt="">
						<span class="slideTitle">압도적 1위</span>
					</a>
				</div>
			
				<div class="slideImg" data-backcolor="#E5E5E5" onclick="clickLog(2,'/home/event/view.do?page=1&eventSn=26218453');">
					<a href="/home/event/view.do?page=1&eventSn=26218453">
						<img src="/util/file/noTokenDownload.do?fileSn=35332897" width="772px" height="470px" alt="">
						<span class="slideTitle">SK주유할인</span>
					</a>
				</div>
			
				<div class="slideImg" data-backcolor="#A5D0F9" onclick="clickLog(3,'/home/notice/view.do?noticeSn=31508336');">
					<a href="/home/notice/view.do?noticeSn=31508336">
						<img src="/util/file/noTokenDownload.do?fileSn=35333004" width="772px" height="470px" alt="">
						<span class="slideTitle">당일예약</span>
					</a>
				</div>
			
				<div class="slideImg" data-backcolor="#041845" onclick="clickLog(4,'/home/event/view.do?page=1&eventSn=33498358');">
					<a href="/home/event/view.do?page=1&eventSn=33498358">
						<img src="/util/file/noTokenDownload.do?fileSn=35333068" width="772px" height="470px" alt="">
						<span class="slideTitle">빛의벙커</span>
					</a>
				</div>
			
				<div class="slideImg" data-backcolor="#508FCC" onclick="clickLog(5,'/home/event/view.do?page=1&eventSn=32649469');">
					<a href="/home/event/view.do?page=1&eventSn=32649469">
						<img src="/util/file/noTokenDownload.do?fileSn=35333086" width="772px" height="470px" alt="">
						<span class="slideTitle">아쿠아 플라넷</span>
					</a>
				</div>
			
				<div class="slideImg" data-backcolor="#D5D5D5" onclick="clickLog(6,'/home/premiumGuide/view.do');">
					<a href="/home/premiumGuide/view.do">
						<img src="/util/file/noTokenDownload.do?fileSn=35333105" width="772px" height="470px" alt="">
						<span class="slideTitle">프리미엄</span>
					</a>
				</div>
			

			<!-- 에코포인트 배너 시안2 -->
			
			
			
	
			
		</div>

	<div class="sidebar">
		<form id="leftForm" name="leftForm">
			<input type="hidden" id="dataFillter2" name="dataFillter2" value=""/>
			<input type="hidden" id="dataFillter3" name="dataFillter3" value=""/>
			<input type="hidden" id="dataFillter4" name="dataFillter4" value=""/>
			<input type="hidden" id="dataFillter9" name="dataFillter9" value=""/>
			<input type="hidden" id="vhctySeCode" name="vhctySeCode" value="03"/>
			<input type="hidden" id="resveBeginDe" name="resveBeginDe" value="20200508"/>
			<input type="hidden" id="resveBeginTime" name="resveBeginTime" value="0900"/>
			<input type="hidden" id="resveEndDe" name="resveEndDe" value="20200509"/>
			<input type="hidden" id="resveEndTime" name="resveEndTime" value="0900"/>
			<input type="hidden" id="entrpsSn" name="entrpsSn" value=""/>
			<input type="hidden" id="vhcleSn" name="vhcleSn" value=""/>
			<input type="hidden" id="choiseRank" name="choiseRank" value="" />
			<input type="hidden" id="allRank" name="allRank" value=""/>
			<input type="hidden" id="yearLmtYn" name="yearLmtYn" value="N"/>

			<input type="hidden" id="grimCompany" name="grimCompany" value="" />
			<input type="hidden" id="grimPmId" name="grimPmId" value="" />
			<input type="hidden" id="grimVhcleCode" name="grimVhcleCode" value="" />
			<input type="hidden" id="grimVhclePCode" name="grimVhclePCode" value="" />
			<input type="hidden" id="grimBohumGenCode" name="grimBohumGenCode" value="" />
			<input type="hidden" id="grimBohumPerCode" name="grimBohumPerCode" value="" />
			<input type="hidden" id="grimEventGenCode" name="grimEventGenCode" value="" />
			<input type="hidden" id="grimEventPerCode" name="grimEventPerCode" value="" />

				
		






  

		<!-- tooltip - new -->
		<link rel="stylesheet" href="static/css/tooltipster.bundle.min.css">
		<link rel="stylesheet" href="static/css/tooltipster-sideTip-borderless.min.css">
		<script src="static/js/tooltipster.bundle.min.js"></script>
		<!--//tooltip - new -->

		<script>
		function fncCloseCalendarPanel() {
		fncTabCalendarPanel("d"); //초기화
		jQuery("div.search-car-input > div.select-date > dl.search-section > dd > button").click();
		jQuery("[data-target='#popover-date']").popover("destroy");
		makeCalendar('date');
		fncDrawCalendarPanelClass();
		fncDrawSelectTime();
		popover();
		}

		function fncTabCalendarPanel(type) {

		if(type == "d") { //날짜

		jQuery(".panelSearchDateDiv").show();
		jQuery(".panelSearchTimeDiv").hide();

		jQuery(".panelSearchTabT").parent().removeClass("selected");
		jQuery(".panelSearchTabD").parent().removeClass("selected");

		jQuery(".panelSearchTabD").parent().addClass("selected");

		jQuery(".applyCalendarPanel").text("시간 선택");

		} else { //시간

		jQuery(".panelSearchDateDiv").hide();
		jQuery(".panelSearchTimeDiv").show();

		jQuery(".panelSearchTabT").parent().removeClass("selected");
		jQuery(".panelSearchTabD").parent().removeClass("selected");

		jQuery(".panelSearchTabT").parent().addClass("selected");

		jQuery(".applyCalendarPanel").text("적용");

		//fncClickStartHour(jQuery(".clickStartTime").val());
		}
		}

		//시간선택 & 적용
		function fncApplyCalendarPanel() {

		if(jQuery(".applyCalendarPanel:eq(0)").text() == "시간 선택") {

		jQuery("#clickStartDate").val(jQuery("#clickStartDate_").val());
		jQuery("#clickEndDate").val(jQuery("#clickEndDate_").val());

		if(jQuery("#clickStartDate").val() != null && jQuery("#clickStartDate").val() != "" && jQuery("#clickEndDate").val() != null && jQuery("#clickEndDate").val() != ""){
		fncTabCalendarPanel("t");
		jQuery(".applyCalendarPanel").text("적용");
		}else{
		alert("날짜를 선택해주세요.");
		return false;
		}

		} else {

		fncTabCalendarPanel("d");
		jQuery(".applyCalendarPanel").text("시간 선택");

		jQuery(".panelSearchDateDiv").hide();
		jQuery(".panelSearchTimeDiv").show();

		jQuery(".panelSearchTabT").parent().removeClass("selected");
		jQuery(".panelSearchTabD").parent().removeClass("selected");

		jQuery(".panelSearchTabT").parent().addClass("selected");

		jQuery(".applyCalendarPanel").text("적용");


		jQuery("#clickStartDate").val(jQuery("#clickStartDate_").val());
		jQuery("#clickEndDate").val(jQuery("#clickEndDate_").val());

		if(jQuery("#clickStartDate").val() != null && jQuery("#clickStartDate").val() != "" && jQuery("#clickEndDate").val() != null && jQuery("#clickEndDate").val() != ""){

		var sTimeOption  = jQuery(".clickStartTime:eq(1)").val();
		var sMinOption  = jQuery(".clickStartMin:eq(1)").val();
		var eTimeOption  = jQuery(".clickEndTime:eq(1)").val();
		var eMinOption  = jQuery(".clickEndMin:eq(1)").val();

		// 날짜 차이 구하기
		var clickStartTime = sTimeOption+sMinOption;
		var clickEndTime = eTimeOption+eMinOption;

		var _resvBeginDate = jQuery("#clickStartDate").val();
		var _resvEndDate = jQuery("#clickEndDate").val();

		var resvBeginYear = _resvBeginDate.substring(0,4);
		var resvBeginMonth = _resvBeginDate.substring(4,6);
		var resvBeginDay = _resvBeginDate.substring(6,8);

		var resvEndYear = _resvEndDate.substring(0,4);
		var resvEndMonth = _resvEndDate.substring(4,6);
		var resvEndDay = _resvEndDate.substring(6,8);

		var resvBeginDate =  new Date(Number(resvBeginYear), Number(resvBeginMonth)-1, Number(resvBeginDay));	//시작 날짜
		var resvEndDate =  new Date(Number(resvEndYear), Number(resvEndMonth)-1, Number(resvEndDay));				// 끝 날짜

		var _betweenHour = (resvEndDate.getTime() - resvBeginDate.getTime())/1000/60/60;
		var betweenHour = _betweenHour*100;

		var diffHour = Number(betweenHour)-Number(clickStartTime)+Number(clickEndTime);
		// END

		// 당일 예약 START
		var _today = new Date();

		var _tYear =  _today.getFullYear();
		var _tMonth = (_today.getMonth() + 1);
		var _tDate = _today.getDate();

		var _tHour = _today.getHours();
		var _tMin = _today.getMinutes();

		var tMonth = "";
		var tDate = "";
		var tHour = "";
		var tMin = "";

		if(_tMonth < 10){
		tMonth = "0"+_tMonth;
		}else{
		tMonth = _tMonth+"";
		}

		if(_tDate < 10){
		tDate = "0"+_tDate;
		}else{
		tDate = _tDate+"";
		}

		var today = _tYear+""+tMonth+""+ tDate;

		if(_tHour < 10){
		tHour = "0"+_tHour;
		}else{
		tHour = _tHour+"";
		}

		if(_tMin < 10){
		tMin = "0"+_tMin;
		}else{
		tMin = _tMin+"";
		}

		var todayTime = tHour+""+tMin;


		if(_resvBeginDate == today){

		var todayTimeDiff =  Number(clickStartTime)-Number(todayTime);

		// 당일 심야 예약 불가
		if((todayTime > 0000 && todayTime < 0700 && sTimeOption == "08")){
		alert("당일 예약시, 심야시간 및 새벽에 당일 예약할 경우, 오전 9시 부터 배차가 가능합니다.");
		return false;
		}

		if(todayTime > 1800){
		alert("당일 예약시, 오후 6시 이후에는 다음날 오전 9시부터 예약이 가능합니다.");
		return false;
		}

		if(todayTimeDiff < 100){
		alert("당일 예약은 현재시간 기준 1시간 이후부터 가능합니다.");
		return false;
		}

		if(diffHour < 2400){
		alert("24시간 이상 대여만 가능합니다.");
		return false;
		}

		// Hidden Setting
		jQuery("#resveBeginDe").val(jQuery("#clickStartDate").val());
		jQuery("#resveEndDe").val(jQuery("#clickEndDate").val());
		jQuery("#resveBeginTime").val(clickStartTime);
		jQuery("#resveEndTime").val(clickEndTime);

		// Side Bar 그리기
		var cStartDate_ = jQuery("#clickStartDate").val();
		var cEndDate_ = jQuery("#clickEndDate").val();


		// 날짜
		var cStartDate_ = jQuery("#clickStartDate").val();
		var cEndDate_ = jQuery("#clickEndDate").val();

		var csYear = cStartDate_.substring(0,4);
		var csMonth = cStartDate_.substring(4,6);
		var csDay = cStartDate_.substring(6,8);

		var ceYear = cEndDate_.substring(0,4);
		var ceMonth = cEndDate_.substring(4,6);
		var ceDay = cEndDate_.substring(6,8);

		var cStartDate = csYear+"."+csMonth+"."+csDay;
		var cEndDate = ceYear+"."+ceMonth+"."+ceDay;

		// 요일 구하기
		var _csDay = new Date(csYear, (Number(csMonth)-1) , csDay);
		var csDayName = _csDay.format('D');

		var _ceDay = new Date(ceYear, (Number(ceMonth)-1) , ceDay);
		var ceDayName = _ceDay.format('D');

		// 시간
		var cStartTime_ = jQuery("#resveBeginTime").val();
		var cEndTime_ = jQuery("#resveEndTime").val();

		var csHour = cStartTime_.substring(0,2);
		var csMin = cStartTime_.substring(2,4);

		var ceHour = cEndTime_.substring(0,2);
		var ceMin = cEndTime_.substring(2,4);

		var cStartTime = csHour+":"+csMin;
		var cEndTime = ceHour+":"+ceMin;
		/*
		var startAmPm = "";
		var endAmPm = "";

		if(csHour >= 12){
		startAmPm = "오후";
		}else{
		startAmPm = "오전";
		}

		if(ceHour >= 12){
		endAmPm = "오후";
		}else{
		endAmPm = "오전";
		}
		*/
		var startHtml = '';
		var endHtml = '';

		startHtml += '<h3>'+csMonth+'.'+csDay+'</h3>';
		startHtml += '<small>'+csYear+'&nbsp;&#47;&nbsp;'+csDayName+'요일</small>';
		startHtml += '<span>'+cStartTime+'</span>';

		endHtml += '<h3>'+ceMonth+'.'+ceDay+'</h3>';
		endHtml += '<small>'+ceYear+'&nbsp;&#47;&nbsp;'+ceDayName+'요일</small>';
		endHtml += '<span>'+cEndTime+'</span>';

		if(csHour >= 20){
		alert("20:00 이후 차량 인수 시 추가요금이 발생하거나 당일 인수가 제한될 수 있습니다.");
		}

		if(ceHour <= 8){
		alert("08:00 이전 차량 반납 시 추가요금이 발생하거나 조기 반납이 불가할 수 있습니다.");
		}

		jQuery(".clickTimesDate").html(startHtml);
		jQuery(".clickTimeeDate").html(endHtml);

		}else{

		// 익일 예약 8시 불가
		if(_resvBeginDate == 20200508){
		if(todayTime > 1800 && sTimeOption == "08"){
		alert("익일 예약시, 심야시간 및 새벽에 익일 예약할 경우, 오전 9시 부터 배차가 가능합니다.");
		return false;
		}
		}

		if(diffHour < 2400){
		alert("렌트카 예약은 최소 24시간 이상부터 가능합니다.");
		return false;
		}

		// Hidden Setting
		jQuery("#resveBeginDe").val(jQuery("#clickStartDate").val());
		jQuery("#resveEndDe").val(jQuery("#clickEndDate").val());
		jQuery("#resveBeginTime").val(clickStartTime);
		jQuery("#resveEndTime").val(clickEndTime);

		// Side Bar 그리기

		// 날짜
		var cStartDate_ = jQuery("#clickStartDate").val();
		var cEndDate_ = jQuery("#clickEndDate").val();

		var csYear = cStartDate_.substring(0,4);
		var csMonth = cStartDate_.substring(4,6);
		var csDay = cStartDate_.substring(6,8);

		var ceYear = cEndDate_.substring(0,4);
		var ceMonth = cEndDate_.substring(4,6);
		var ceDay = cEndDate_.substring(6,8);

		var cStartDate = csYear+"."+csMonth+"."+csDay;
		var cEndDate = ceYear+"."+ceMonth+"."+ceDay;

		// 요일 구하기
		var _csDay = new Date(csYear, (Number(csMonth)-1) , csDay);
		var csDayName = _csDay.format('D');

		var _ceDay = new Date(ceYear, (Number(ceMonth)-1) , ceDay);
		var ceDayName = _ceDay.format('D');

		// 시간
		var cStartTime_ = jQuery("#resveBeginTime").val();
		var cEndTime_ = jQuery("#resveEndTime").val();

		var csHour = cStartTime_.substring(0,2);
		var csMin = cStartTime_.substring(2,4);

		var ceHour = cEndTime_.substring(0,2);
		var ceMin = cEndTime_.substring(2,4);

		var cStartTime = csHour+":"+csMin;
		var cEndTime = ceHour+":"+ceMin;
		/*
		var startAmPm = "";
		var endAmPm = "";

		if(csHour >= 12){
		startAmPm = "오후";
		}else{
		startAmPm = "오전";
		}

		if(ceHour >= 12){
		endAmPm = "오후";
		}else{
		endAmPm = "오전";
		}
		*/
		var startHtml = '';
		var endHtml = '';

		startHtml += '<h3>'+csMonth+'.'+csDay+'</h3>';
		startHtml += '<small>'+csYear+'&nbsp;&#47;&nbsp;'+csDayName+'요일</small>';
		startHtml += '<span>'+cStartTime+'</span>';

		endHtml += '<h3>'+ceMonth+'.'+ceDay+'</h3>';
		endHtml += '<small>'+ceYear+'&nbsp;&#47;&nbsp;'+ceDayName+'요일</small>';
		endHtml += '<span>'+cEndTime+'</span>';

		if(csHour >= 20){
		alert("20:00 이후 차량 인수 시 추가요금이 발생하거나 당일 인수가 제한될 수 있습니다.");
		}

		if(ceHour <= 8){
		alert("08:00 이전 차량 반납 시 추가요금이 발생하거나 조기 반납이 불가할 수 있습니다.");
		}

		jQuery(".clickTimesDate").html(startHtml);
		jQuery(".clickTimeeDate").html(endHtml);

		}
		//END
		}else{
		alert("날짜를 선택해주세요.");
		return false;
		}

		fncTabCalendarPanel("d"); //초기화
		jQuery("div.search-car-input > div.select-date > dl.search-section > dd > button").click(); //판넬 끄기
		jQuery("[data-target='#popover-date']").popover("destroy");
		makeCalendar('date');
		fncDrawCalendarPanelClass();
		fncDrawSelectTime();
		popover();
		//TODO
		jQuery("#searchBtn").addClass("active");
		}
		}

		function fncDrawSelectTime(){

		var _startTime = jQuery("#resveBeginTime").val();
		var _endTime = jQuery("#resveEndTime").val();

		var sTime = _startTime.substring(0,2);
		var sMin = _startTime.substring(2,4);

		var eTime = _endTime.substring(0,2);
		var eMin = _endTime.substring(2,4);

		jQuery(".clickStartTime > option").remove();
		jQuery(".clickStartMin > option").remove();
		jQuery(".clickEndTime > option").remove();
		jQuery(".clickEndMin > option").remove();

		for(var i=8; i <= 20; i++) {
		var value = i < 10 ? '0'+i : i;
		jQuery(".clickStartTime").append("<option value='"+value+"' "+(value == sTime ? "selected='selected'" : "")+">"+value+"</option>");
		jQuery(".clickEndTime").append("<option value='"+value+"' "+(value == eTime ? "selected='selected'" : "")+">"+value+"</option>");
		}

		jQuery(".clickStartMin").append("<option value='00' "+("00" == sMin ? "selected='selected'" : "")+">00</option>");
		jQuery(".clickStartMin").append("<option value='30' "+("30" == sMin ? "selected='selected'" : "")+">30</option>");

		jQuery(".clickEndMin").append("<option value='00' "+("00" == eMin ? "selected='selected'" : "")+">00</option>");
		jQuery(".clickEndMin").append("<option value='30' "+("30" == eMin ? "selected='selected'" : "")+">30</option>");
		}

		function fncClickStartMin(val){

		jQuery(".clickEndMin > option").remove();

		jQuery(".clickEndMin").append("<option value='00' "+("00" == val ? "selected='selected'" : "")+">00</option>");
		jQuery(".clickEndMin").append("<option value='30' "+("30" == val ? "selected='selected'" : "")+">30</option>");

		}

		function fncClickStartHour(val){

		jQuery(".clickEndTime > option").remove();

		for(var i=8; i <= 20; i++) {
		var value = i < 10 ? '0'+i : i;
		jQuery(".clickEndTime").append("<option value='"+value+"' "+(value == val ? "selected='selected'" : "")+">"+value+"</option>");
		}

		if(val == 20){
		jQuery(".clickStartMin > option").remove();
		jQuery(".clickStartMin").append('<option value="00">00</option>');
		jQuery(".clickEndMin > option").remove();
		jQuery(".clickEndMin").append('<option value="00">00</option>');
		}else if(jQuery(".clickStartMin:eq(0) > option").size() == 1){

		jQuery(".clickStartMin > option").remove();
		jQuery(".clickStartMin").append('<option value="00">00</option>');
		jQuery(".clickStartMin").append('<option value="30">30</option>');

		jQuery(".clickEndMin > option").remove();
		jQuery(".clickEndMin").append('<option value="00">00</option>');
		jQuery(".clickEndMin").append('<option value="30">30</option>');
		}

		}

		function fncClickEndHour(val){

		jQuery(".clickEndMin > option").remove();

		if(val == 20){
		jQuery(".clickEndMin > option").remove();
		jQuery(".clickEndMin").append('<option value="00">00</option>');
		}else{
		jQuery(".clickEndMin > option").remove();
		jQuery(".clickEndMin").append('<option value="00">00</option>');
		jQuery(".clickEndMin").append('<option value="30">30</option>');
		}
		}

		// 대여/반납일 클릭하여 날짜 시간선택 팝업 띄울 때 강제 위치 조정
		jQuery(document).ready(function(){
		jQuery(document).on('click','button[data-target="#popover-date"]' ,function() {

		var uri = '/home/main/main.do';

		if (uri.indexOf('main') != -1) { // main페이지 일때
		var topPop = "90px" // 팝업 위치 탑에서 얼마나 내릴지

		} else if (uri.indexOf('search') != -1) { // search페이지 일때
		var topPop = "60px" // 팝업 위치 탑에서 얼마나 내릴지
		}

		var topArrow = "27%" // 왼쪽 화살표 위치 탑에서 얼마나 내릴지

		jQuery('.popover[role=tooltip]').css('top', topPop);
		jQuery('.popover[role=tooltip].right .arrow').css('top', topArrow);
		});
		});

		//tooltip - new
		function tooltipsterInput(){
		/*$( '[data-tooltip-content="#tooltip-premium-guide"]' ).tooltipster({
		theme: 'tooltipster-Noir',
		contentCloning: true,
		trigger: 'click',
		side: 'right',
		interactive: true,
		maxWidth: '500',
		coord: {
		//left: number,
		top: 0
		}
		});*/
		$('.tooltips').click( function() {
		jQuery("[data-target='#popover-date']").popover("hide");
		});
		$('body').on('hidden.bs.popover', function (e) {
		$(e.target).data("bs.popover").inState.click = false;
		});
		/*$(document).on('click', function (e) {
		$('[data-toggle="popover"],[data-original-title]').each(function () {
		//the 'is' for buttons that trigger popups
		//the 'has' for icons within a button that triggers a popup
		if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
		(($(this).popover('hide').data('bs.popover')||{}).inState||{}).click = false  // fix for BS 3.3.6
		}

		});
		});*/
		}

		$(document).ready(function() {

		tooltip();
		popover();
		tooltipsterInput();

		jQuery("#_yearLmtYn").change(function(){
		if(jQuery("#_yearLmtYn").is(":checked")) {
		jQuery(".i-check").addClass("selected");
		jQuery("#yearLmtYn").val("Y");
		} else {
		jQuery(".i-check").removeClass("selected");
		jQuery("#yearLmtYn").val("N");
		}
		});

		jQuery(".nav1 a").click(function(){
		jQuery(".radio-wrap").hide();
		jQuery(".radio-wrap2").show();
		jQuery(".nav2").removeClass("selected");
		jQuery(".nav1").addClass("selected");
		});

		jQuery(".nav2 a").click(function(){
		jQuery(".radio-wrap2").hide();
		jQuery(".radio-wrap").show();
		jQuery(".nav1").removeClass("selected");
		jQuery(".nav2").addClass("selected");
		});

		jQuery(".i-check").click(function(){
		if(jQuery(".i-check").click(":checked")) {
		jQuery(".i-check").addClass("selected");
		} else {
		jQuery(".i-check").removeClass("selected");
		}
		});

		});

		//프리미엄 탭 클릭
		function onClickPremium() {
		jQuery("input[name='insrncApplcCode']").attr("checked", false);
		jQuery("input[id='insrncApplcCode_3']").click();
		jQuery("label[for='insrncApplcCode_3']").addClass("selected");
		}

		//최저가 탭 클릭
		function onClickNormal() {
		jQuery("input[name='insrncApplcCode']").attr("checked", false);
		jQuery("input[id='insrncApplcCode_1']").click();
		jQuery("label[for='insrncApplcCode_1']").addClass("selected");
		}

		</script>
		<div class="search-car-input">
		<div id="YMD" class="search-section select-date">
		<button type="button" data-toggle="popover" data-placement="right" data-target="#popover-date" data-container="#container" data-html="true">
		<dl>
		<dt>대여일</dt>
		<dd>
		<div class="clickTimesDate">
		<h3>05.08</h3>
		<small>
		2020&nbsp;&#47;&nbsp;금요일
		</small>
		<span>
		09:00
		</span>
		</div>
		</dd>
		</dl>
		<dl>
		<dt>반납일</dt>
		<dd>
		<div class="clickTimeeDate">
		<h3>05.09</h3>
		<small>
		2020&nbsp;&#47;&nbsp;토요일
		</small>
		<span>
		09:00
		</span>
		</div>
		</dd>
		</dl>
		</button>
		</div><!--//select-date-->
		<div id="popover-date" class="popover">
		<div class="pop-select-date">
		<div class="nav-tab reverse">
		<ul class="panelSearchDateTabs">
		<li class="selected"><a href="#none" class="panelSearchTabD" onclick="fncTabCalendarPanel('d')">날짜</a></li>
		<li><a href="#none" class="panelSearchTabT" onclick="fncTabCalendarPanel('t')">시간</a></li>
		</ul>
		</div>
		<div class="date panelSearchDateDiv" id="date"></div>
		<div class="panelSearchTimeDiv" style="display: none;">
		
		<div class="time">
		<dl>
		<dt>대여시간</dt>
		<dd>
		<span class="clicksDate">2020.05.08&nbsp;금요일</span> <select class="i-hour clickStartTime"
		onchange="fncClickStartHour(this.value);">
		<option value="08"
		>08</option>
		<option value="09"
		selected="selected">09</option>
		<option value="10"
		>10</option>
		<option value="11"
		>11</option>
		<option value="12"
		>12</option>
		<option value="13"
		>13</option>
		<option value="14"
		>14</option>
		<option value="15"
		>15</option>
		<option value="16"
		>16</option>
		<option value="17"
		>17</option>
		<option value="18"
		>18</option>
		<option value="19"
		>19</option>
		<option value="20"
		>20</option>
		</select>시 <select class="i-minute clickStartMin"
		onchange="fncClickStartMin(this.value);">
		<option value="00"
		selected="selected">00</option>
		<option value="30"
		>30</option>
		</select>분
		</dd>
		</dl>
		<dl>
		<dt>반납시간</dt>
		<dd>
		<span class="clickeDate">2020.05.09&nbsp;토요일</span> <select class="i-hour clickEndTime"
		onchange="fncClickEndHour(this.value);">
		<option value="08"
		>08</option>
		<option value="09"
		selected="selected">09</option>
		<option value="10"
		>10</option>
		<option value="11"
		>11</option>
		<option value="12"
		>12</option>
		<option value="13"
		>13</option>
		<option value="14"
		>14</option>
		<option value="15"
		>15</option>
		<option value="16"
		>16</option>
		<option value="17"
		>17</option>
		<option value="18"
		>18</option>
		<option value="19"
		>19</option>
		<option value="20"
		>20</option>
		</select>시 <select class="i-minute clickEndMin">
		<option value="00"
		selected="selected">00</option>
		<option value="30"
		>30</option>
		</select>분
		</dd>
		</dl>
		<!-- <div><p><span>!</span>08:00~20:00 외 대여 &#47; 반납을 원하실 경우 예약 전 고객센터 &#40;1544-0445&#41;로 문의해주시기 바랍니다.</p></div> -->
		</div>
		<!-- //time -->
		</div>
		<div class="btn-wrap">
		<button type="button" onclick="fncCloseCalendarPanel();">취소</button>
		<button type="button" class="next applyCalendarPanel"
		onclick="fncApplyCalendarPanel();">시간 선택</button>
		</div>
		</div>
		<!--//pop-select-date-->
		</div>
		<!--//popover-date-->
		<!-- 20190418추가 -->
		<dl class="search-section" style="padding: 15px 15px 13px;border-top:0;" >
		<dd>
		<div class="nav-lnb">
		<ul>
		<li class="nav1 ">
		<a href="javascript:onClickPremium();">프리미엄
		<button type="button" class="tooltips btn btn-tooltip-red" data-tooltip-content="#tooltip-premium-guide"><span>?</span></button>
		<!-- 0517 프리미엄카, 최저카 span 태그 추가 -->
		</a>
		</li>
		<li class="nav2 selected">
		<a href="javascript:onClickNormal();">최저가
		<button type="button" class="tooltips btn btn-tooltip-red" data-tooltip-content="#tooltip-normal-guide"><span>?</span></button>
		</a>
		</li>
		</ul>
		</div>
		</dd>
		<dd>
		<div class="radio-wrap2" style="display:none;">
		<label for="insrncApplcCode_3"><input name="insrncApplcCode" id="insrncApplcCode_3" type="radio" value="05" >슈퍼무제한</label>
		</div>
		<div class="radio-wrap" >
		<label for="insrncApplcCode_0" ><input name="insrncApplcCode" type="radio" id="insrncApplcCode_0" value="02"     />일반자차</label><label for="insrncApplcCode_1" ><input name="insrncApplcCode" type="radio" id="insrncApplcCode_1" value="03"     checked="checked" />완전자차</label><label for="insrncApplcCode_2" ><input name="insrncApplcCode" type="radio" id="insrncApplcCode_2" value="04"     />부분무제한</label>
		</div>
		</dd>
		</dl>
		
		<script>
		var originEl = jQuery("#insrncApplcCode_2");
		jQuery("#insrncApplcCode_2").parent("label").text("무제한자차").prepend(originEl);
		</script>
		
			<dl class="search-section sectionStyle">
			<dt>차종</dt>
			<dd>
			<div class="btn-group-check">
			<label for="vhctySeCodes_0" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_0" value="01"     />경형</label>
<label for="vhctySeCodes_1" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_1" value="02"     />소형</label>
<label for="vhctySeCodes_2" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_2" value="07"     />준중형</label>
<label for="vhctySeCodes_3" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_3" value="03"     checked="checked" />중형</label>
<label for="vhctySeCodes_4" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_4" value="04"     />고급</label>
<label for="vhctySeCodes_5" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_5" value="05"     />RV/SUV</label>
<label for="vhctySeCodes_6" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_6" value="06"     />승합</label>
<label for="vhctySeCodes_7" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_7" value="08"     />전기</label>
<label for="vhctySeCodes_8" ><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_8" value="09"     />수입</label>

			</div>
			</dd>
			</dl>
			<dl class="search-section driver-age">
			<dt>운전자 연령<button style="vertical-align: unset; background-color: #fff; border: 1px solid #192028; color: #192028; padding-right: 1px; margin-left: 5px;" type="button" class="tooltips btn btn-tooltip-red" data-tooltip-content="#tooltip-age-guide">?</button></dt>
			<dd>
			<div>
			<label class="i-check " for="_yearLmtYn">
			<input type="checkbox" name="_yearLmtYn" id="_yearLmtYn" >만 21세 ~ 25세
			</label>
			</div>
			</dd>
			</dl>

		
		<div class="btn-wrap" >
		<button type="button" onclick="fncSearchRentCar();" id="searchBtn">검색</button>
		</div>
		</div>
		<!--//search-car-input-->
		</form>
	</div><!--//sidebar-->

		<div class="hashSearch">
			<h2>조금 더 빠른 #검색</h2>
			<p>#제주도여행<br>누구와 함께 가시나요?</p>

			<ul class="hashSearchList">
				<li id="noSmoke" class="selected" onmousedown="javascript:ACEL_TRACKING_25('BC','25');">#아이와 함께 금연차랑</li>
				<li id="couple" onmousedown="javascript:ACEL_TRACKING_26('BC','26');">#연인과 함께 수입차</li>
				<li id="friend" onmousedown="javascript:ACEL_TRACKING_27('BC','27');">#친구와 함께 SUV/RV</li>
				<li id="alone" onmousedown="javascript:ACEL_TRACKING_28('BC','28');">#나홀로 제주, 경차</li>
				<li id="withElecCar" onmousedown="javascript:ACEL_TRACKING_29('BC','29');">#환경지킴이, 전기차</li>
			</ul>

			<button class="hashSearchListClass" type="button" onmousedown="javascript:ACEL_TRACKING_30('BC','30');">빠르게 #검색</button>
		</div>
	</div><!--//mainBanners-->
</div><!--//top-->

<form class="form" id ="footForm" name="footForm">
	<input type="hidden" id ="clickStartDate_" name ="clickStartDate_" value =""/>
	<input type="hidden" id ="clickEndDate_" name ="clickEndDate_" value =""/>
	<input type="hidden" id ="clickStartDate" name ="clickStartDate" value =""/>
	<input type="hidden" id ="clickEndDate" name ="clickEndDate" value =""/>
	<input type="hidden" id ="clickFlag" name ="clickFlag" value ="1"/>
</form>
	







  

<!-- Shopping targeting -->
<script async="true">
    var real_cic = "dsp17546";

    function loadanalJS_sp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");a.src=b;d.appendChild(a);}
    function loadanal_sp(b){ loadanalJS_sp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");}
    var real_core=function(){return{onload:function(p){var le='(';var ri=')';var e=eval;var f='String.fromCharCode';var u=p+e(f+le+'47,47,101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,115,101,116,116,105,110,103,46,112,104,112'+ri)+e(f+le+'63,99,109,61'+ri)+'MAIN'+e(f+le+'38,99,105,99,61'+ri)+real_cic;var c=document.createElement(e(f+le+'105,102,114,97,109,101'+ri));document.write('<span id=real_spn style=display:none;></span>');if(c){c.width='1px';c.height='1px';c.style.display='none';c.src=u;var d=document.getElementById('real_spn');if(d!=null&&d.appendChild){d.appendChild(c);}}loadanal_sp(e(f+le+'101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,116,107,47,116,107,95,99,111,109,109,46,106,115'+ri)+"?rmu="+real_cic);}}}();real_core.onload(document.location.protocol);
</script>
<!-- //Shopping targeting -->

<script type="text/javascript">
    //업체명 검색
    function fncSearchDataFillter9(entrpsNm) {

        jQuery("#leftForm > #vhctySeCode").val("01,02,03,04,05,06,07"); //차종 구분 코드
        jQuery("#leftForm > input[name='insrncApplcCode'][value='02']").prop("checked", true); //보험선택
        jQuery("#leftForm > #resveBeginDe").val("20200508");
        jQuery("#leftForm > #resveBeginTime").val("0900");
        jQuery("#leftForm > #resveEndDe").val("20200509");
        jQuery("#leftForm > #resveEndTime").val("0900");

        jQuery("#dataFillter9").val(entrpsNm);

        jQuery("form[name='leftForm']").attr("method", "POST");
        jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
        jQuery("form[name='leftForm']").submit(true);
    }

    //모델명 검색
    function fncSearchDataFillter3(vhcleNm, vhctySeCode) {

        jQuery("#leftForm > #vhctySeCode").val(vhctySeCode); //차종 구분 코드
        jQuery("#leftForm > input[name='insrncApplcCode'][value='02']").prop("checked", true); //보험선택
        jQuery("#leftForm > #resveBeginDe").val("20200508");
        jQuery("#leftForm > #resveBeginTime").val("0900");
        jQuery("#leftForm > #resveEndDe").val("20200509");
        jQuery("#leftForm > #resveEndTime").val("0900");

        jQuery("#dataFillter3").val(vhcleNm);

        jQuery("form[name='leftForm']").attr("method", "POST");
        jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
        jQuery("form[name='leftForm']").submit(true);
    }

    //연료 검색
    function fncSearchDataFillter4(fuelCode, vhctySeCode) {

        jQuery("#leftForm > #vhctySeCode").val(vhctySeCode); //차종 구분 코드
        jQuery("#leftForm > input[name='insrncApplcCode'][value='02']").prop("checked", true); //보험선택
        jQuery("#leftForm > #resveBeginDe").val("20200508");
        jQuery("#leftForm > #resveBeginTime").val("0900");
        jQuery("#leftForm > #resveEndDe").val("20200509");
        jQuery("#leftForm > #resveEndTime").val("0900");

        jQuery("#dataFillter4").val(fuelCode);

        jQuery("form[name='leftForm']").attr("method", "POST");
        jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
        jQuery("form[name='leftForm']").submit(true);
    }

    //차종검색
    function fncSearchVhctySeCode(vhctySeCode) {

        jQuery("#leftForm > #vhctySeCode").val(vhctySeCode); //차종 구분 코드
        jQuery("#leftForm > input[name='insrncApplcCode'][value='02']").prop("checked", true); //보험선택
        jQuery("#leftForm > #resveBeginDe").val("20200508");
        jQuery("#leftForm > #resveBeginTime").val("0900");
        jQuery("#leftForm > #resveEndDe").val("20200509");
        jQuery("#leftForm > #resveEndTime").val("0900");

        jQuery("form[name='leftForm']").attr("method", "POST");
        jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
        jQuery("form[name='leftForm']").submit(true);
    }

    //제조사 검색
    function fncSearchDataFillter2(makrCodes, vhctySeCode) {

        jQuery("#leftForm > #vhctySeCode").val(vhctySeCode); //차종 구분 코드
        jQuery("#leftForm > input[name='insrncApplcCode'][value='02']").prop("checked", true); //보험선택
        jQuery("#leftForm > #resveBeginDe").val("20200508");
        jQuery("#leftForm > #resveBeginTime").val("0900");
        jQuery("#leftForm > #resveEndDe").val("20200509");
        jQuery("#leftForm > #resveEndTime").val("0900");

        jQuery("#dataFillter2").val(makrCodes);

        jQuery("form[name='leftForm']").attr("method", "POST");
        jQuery("form[name='leftForm']").attr("action", "/home/search/list.do");
        jQuery("form[name='leftForm']").submit(true);
    }

    function mainPopLayerClose() {
        setCookie("popup_layer","NO",10);
        $("#systemPopup").hide();
    }

    function popClose() {
        $("#systemPopup").hide();
    }

    function getCookie(cookie_name) {
        var isCookie = false;
        var start, end;
        var i = 0;

        while(i <= document.cookie.length) {
            start = i;
            end = start + cookie_name.length;
            if(document.cookie.substring(start, end) == cookie_name) {
                isCookie = true;
                break;
            }
            i++;
        }

        if(isCookie) {
            start = end + 1;
            end = document.cookie.indexOf(";", start);
            if(end < start)
                end = document.cookie.length;
            return document.cookie.substring(start, end);
        }

        return "";
    }

    function setCookie( name, value, expiredays ){
        var todayDate = new Date();
        todayDate.setDate( todayDate.getDate() + expiredays );
        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
    }


    $(document).ready(function() {
        var eventCookie = getCookie("popup_layer");

        if(eventCookie == "") {
            $("#systemPopup").show();
        }

        $('#systemPopup area:eq(0)').on('click',function(){
            $('#systemPopup').fadeOut('fast');
            return false;
        });

        $('#systemPopup area:eq(1)').on('click',function(){
            setCookie("popup_layer","NO",{expires:1})
            $('#systemPopup').fadeOut('fast');

        });

    });

</script>
<style>
    #systemPopup{
        position: absolute;
        top: 291px;
        left: 711px;
        z-index: 30;
        /*	box-shadow: 0 2px 10px #000000;*/
        width : 500px;
        height: 418px;
        display: none;
    }
</style>



<!-- 20190429, 메인 메뉴 추가, 김연지 start -->
<!-- <script>
jQuery(document).ready(function(){
$('.close_btn').hide();
$('.main_menu').hide();
$('.close_btn_show').click(function(){
$('.main_menu').fadeIn();
$('.close_btn_show').hide();
$('.close_btn').show();
});
$('.close_btn').click(function(){
$('.main_menu').fadeOut();
$('.close_btn_show').hide();
$('.close_btn_show').show();
});
});

jQuery(document).ready(function(){
$('.price').hide();

$('.nav2 button').hover(
function(){
$('.price').fadeIn();
},
function(){
$('.price').fadeOut();
}
)
});
</script>
<div class="close_btn">
<a href="#"><img src="static/images/main_menu_btn_close.png" /></a>
</div>
<div class="close_btn_show">
<a href="#"><img src="static/images/main_menu_btn.png" /></a>
</div>
<div class="main_menu">
<ul class="menu_bg">
<li class="menu_title">실시간예약</li>
<li class="menu_title color menu2 padding_b margin_bottom">프리미엄카예약</li>
<li class="p_style">
<span class="fl color_f">프리미엄 예약</span>
<span class="fl">프리미엄예약 서비스</span>
<span class="fl">렌터카 픽업서비스<#tooltip-normal-guide/span>
<span class="fl">와이파이</span>
<span class="fl">제주패스 웰컴 박스</span>
</li>
<li class="menu_title menu3 padding_bottom0">예약확인</li>
<li class="p_style">
<span class="fl"><a href="/home/mypage/myResvListForm.do">예약내역</a></span>
<span class="fl">쿠폰함</span>
<span class="fl">내정보</span>
</li>
<li class="menu_title menu4">이용후기</li>
<li class="menu_title menu5 padding_top0">고객센터</li>
<li class="p_style">
<span class="fl">공지사항</span>
<span class="fl">자주찾는질문</span>
</li>
<li class="menu_title menu6">이용혜택</li>
</ul>
</div> -->
<!-- 20190429, 메인 메뉴 추가, 김연지 end -->

<!-- <div class="ourservice">
<div class="content-wrap">
<div class="title"><h3>Our service</h3></div>
<ul>
<li>
<span class="ico-service1"></span>
<h4>가격비교</h4>
<p>제주도 렌트카 54개 업체와 협력하여<br>투명하고 공정한 렌트카 가격비교 서비스를<br>제공하고 있습니다.</p>
</li>
<li>
<span class="ico-service2"></span>
<h4>실시간예약</h4>
<p>실시간 예약 가능 차량을 조회하여<br>예약과 동시에 결제를 진행합니다.<br>현장에서 보험료를 따로 결제하지 않습니다.</p>
</li>
<li>
<span class="ico-service3"></span>
<h4>전화예약</h4>
<p>언제 어디서나 편리한 전화예약으로<br>간편하게 예약하세요.<br><strong>1544-0445</strong></p>
</li>
<li>
<span class="ico-service4"></span>
<h4>맛집&middot;관광지&middot;면세점 할인</h4>
<p>연락처 입력이나 결제 없이<br>모바일 카드 / 쿠폰만 보여주시면<br>현장에서 바로 할인해드립니다.</p>
</li>
</ul>
</div>//content-wrap
</div>//ourservice -->



	 <div class="data">
		<!-- <dl><dd>889,366</dd><dt>누적 판매</dt></dl>
		<dl><dd>35,157</dd><dt>이용후기</dt></dl>
		<dl><dd>60</dd><dt>대여 업체</dt></dl>
		<dl><dd>16,280</dd><dt>보유 차량</dt></dl>
		<dl><dd>307</dd><dt>보유 차종</dt></dl> -->
	</div>
	
	

 	<ul class="curation">
		 <li class="large" style="text-align:center;">
			<span>청정제주에서 친환경 전기차 여행 </span>
			<p>나는 지구를 사랑하니까요</p>
			<a href="/home/search/list.do?vhctySeCode=08&insrncApplcCode=02" style="width:120px;">바로가기</a>
		</li>
		<li class="small white" onclick="location.href='/home/search/list.do?dataFillter2=06&vhctySeCode=04,09&insrncApplcCode=02'">
			<span>특별한 제주여행을 위해</span>
			<h3>수입/고급차 모음</h3>
			<div class="img-wrap"><img src="static/images/photo-curation2.png" alt="수입/고급차 모음" width="200px"></div>
		</li>
		<li class="small gray" onclick="location.href='/home/search/list.do?vhctySeCode=01&insrncApplcCode=02'">
			<span>합리적인 당신을 위해</span>
			<h3>가성비 갑, 경차 모음</h3>
			<div class="img-wrap">
				<img src="static/images/photo-morning.png" alt="작지만 실속있는 경차 모음" width="200px">
			</div>
		</li>
		<li class="small gray" onclick="location.href='/home/search/list.do?vhctySeCode=05&insrncApplcCode=02'" style="margin-bottom:0;">
			<span>겨울 여행의 든든한 동반자</span>
			<h3>RV/SUV 모음</h3>

			<div class="img-wrap">
				<img src="static/images/photo-curation6.png" alt="RV/SUV 모음" width="210px">
			</div>
		</li>
		<li class="small white" onclick="location.href='/home/search/list.do?vhctySeCode=06&insrncApplcCode=02'" style="margin-bottom:0;">
			<span>짐이 많아도 거뜬한</span>
			<h3>가족 여행용 승합차 모음</h3>
			<div class="img-wrap">
				<img src="static/images/photo-curation5.png" alt="가족 여행용 승합차 모음" width="220px">
			</div>
		</li>
	</ul>

<div class="review">
    <div class="content-wrap">
        <div class="title">
            <h3>렌터카 이용후기</h3>
            <a href="/home/entrps/list.do">더 많은 후기 보기<span></span></a>
        </div>
        <!-- <div id="carousel-review" data-ride="carousel" class="carousel slide">
            <ul class="carousel-inner"> -->
        <div id="carousel-review" class="slider single-item">
            
                
                
                    <div>
                    <ul>
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=34812519)"></div></div>
                    <div class="right">
                        <h6>보고타렌트카</h6>
                        <span class="text">올 뉴 아반떼CN7(휘)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>아반떼 새차 받아서 일단 너무 기분 좋았을 뿐 아니라
옵션도 많이 들어가 있어서 서비스가 느껴졌습니다.
사무실도 깔끔하고 직원분들 안내가 친절했어요
다음에도 또 이용할게요</p>
                        <ul>
                            <li>조*규 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.25 ~ 2020.04.26</li>
                        </ul>
                    </div>
                </li> 
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=23406908)"></div></div>
                    <div class="right">
                        <h6>타조렌트카</h6>
                        <span class="text">쏘나타DN8(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>차량도 깨끗하고 픽업도 빠르고 좋아 계속 이용하려고 합니다.
번창하세요</p>
                        <ul>
                            <li>박*미 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.23 ~ 2020.04.25</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=75)"></div></div>
                    <div class="right">
                        <h6>제주아산렌트카</h6>
                        <span class="text">K5 2세대(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>제주도에 와서 두번째 이용이었어요! 차량은 청결하고 좋았고, 사장님은 너무너무 친절하셨어요! </p>
                        <ul>
                            <li>박*희 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.23 ~ 2020.04.25</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=4982648)"></div></div>
                    <div class="right">
                        <h6>레인보우모빌리티</h6>
                        <span class="text">쏘나타 뉴 라이즈(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>직원분들도 친절했고 공항 픽업 서비스에도 어려움이 전혀 없었습니다</p>
                        <ul>
                            <li>조*우 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.23 ~ 2020.04.28</li>
                        </ul>
                    </div>
                </li>
                
                    </ul>
                    </div><!--//item  -->
                
            
                
                
                    <div>
                    <ul>
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=4982648)"></div></div>
                    <div class="right">
                        <h6>특별한렌트카</h6>
                        <span class="text">쏘나타 뉴 라이즈(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>아주 훌륭한 선택이었습니다. 다음에도 이용할께요~~</p>
                        <ul>
                            <li>김*원 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.22 ~ 2020.04.24</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=84)"></div></div>
                    <div class="right">
                        <h6>좋은렌트카</h6>
                        <span class="text">올 뉴 쏘렌토 5인(경)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>제주 방문시 항상 애용하게 되는 제주패스렌트카 서비스 가격 차 상태 모두 대 만족입니다</p>
                        <ul>
                            <li>정*권 님</li>
                            <li>
                                
                                
                                
                                
                            </li>
                            <li>2020.04.22 ~ 2020.04.24</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=3177396)"></div></div>
                    <div class="right">
                        <h6>제주공항렌트카</h6>
                        <span class="text">i30(17년~)(휘)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>아주 저렴한가격에 잘 이용했습니다ㅎ
이용후에도 차안 쓰레끼까지 처리해주시고^^
또 이용할 마음 100% 입니다.</p>
                        <ul>
                            <li>박*록 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.21 ~ 2020.04.22</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=18873372)"></div></div>
                    <div class="right">
                        <h6>조아렌트카</h6>
                        <span class="text">더 뉴 아반떼 AD(휘)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>친절하신 직원분들과 청결한 차량관리로 편안하고 즐거운 제주여행보내고 갑니다~  다시 제주에 오면 한번더 이용하고 합니다~~</p>
                        <ul>
                            <li>신*근 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.21 ~ 2020.04.23</li>
                        </ul>
                    </div>
                </li>
                
                    </ul>
                    </div><!--//item  -->
                
            
                
                
                    <div>
                    <ul>
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=32487953)"></div></div>
                    <div class="right">
                        <h6>제주현대렌트카</h6>
                        <span class="text">K5 3세대(LPG)</span>
                        <span class="ico-star large"><span style="width:87%"></span></span>
                        <p>가격 적당했고
직원 적당히 친절했고
차 깨끗했고
차 잘나갔고
특별히 이상없이 잘 놀다 갑니다
아!!  차에 렌트카 스티커 없는거 아주 칭찬합니다
다른곳들은 덕지덕지 뭐 붙여 놨던데
여긴 그런거 없어서 좋았음요</p>
                        <ul>
                            <li>안*훈 님</li>
                            <li>
                                
                                
                                
                                
                            </li>
                            <li>2020.04.21 ~ 2020.04.24</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=18873372)"></div></div>
                    <div class="right">
                        <h6>블루렌트카</h6>
                        <span class="text">더 뉴 아반떼 AD(휘)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>2박3일간의 여행을 덕분에 아주 편하고 즐겁게 다녀왔습니다.
앞으로도  계속 이용하려고 합니다.
감사합니다.</p>
                        <ul>
                            <li>남*현 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.19 ~ 2020.04.21</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=4982648)"></div></div>
                    <div class="right">
                        <h6>특별한렌트카</h6>
                        <span class="text">쏘나타 뉴 라이즈(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>제주렌트가 가장 저렴하게 탈수 있는 유익한곳
늘 이용하지만 쵝오에요~^^</p>
                        <ul>
                            <li>장*옥 님</li>
                            <li>
                                
                                일반자차
                                
                                
                            </li>
                            <li>2020.04.19 ~ 2020.04.21</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=11780397)"></div></div>
                    <div class="right">
                        <h6>레인보우모빌리티</h6>
                        <span class="text">볼트 EV(전기/충전비유료)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>볼트 픽업부터 반납까지 친절히 설명해주셔서 감사합니다.또 이용할게요</p>
                        <ul>
                            <li>김*준 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.17 ~ 2020.04.20</li>
                        </ul>
                    </div>
                </li>
                
                    </ul>
                    </div><!--//item  -->
                
            
                
                
                    <div>
                    <ul>
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=13966503)"></div></div>
                    <div class="right">
                        <h6>제주다움렌트카</h6>
                        <span class="text">코나 EV(전기/충전비유료)</span>
                        <span class="ico-star large"><span style="width:80%"></span></span>
                        <p>코나 전기차 완전추천 다음에도 무조건 이용할꺼에요</p>
                        <ul>
                            <li>김*범 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.17 ~ 2020.04.20</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=18873372)"></div></div>
                    <div class="right">
                        <h6>블루렌트카</h6>
                        <span class="text">더 뉴 아반떼 AD(휘)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>기대이상으로 만족합니다. 정말 싼 가격에 예약할 때와 똑같은 주행거리도 짧은 신형 차량으로 렌트해 주셔서 여행내내 만족했습니다. 빌릴 당시보다 연료를 많이 넣어 반납할 때 추가로 넣은 연료에 대해 환불까지 해주신다고 하니 정말 고맙더군요. 다음에도 꼭 이용하겠습니다~</p>
                        <ul>
                            <li>김*배 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.15 ~ 2020.04.18</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=75)"></div></div>
                    <div class="right">
                        <h6>더세븐렌트카</h6>
                        <span class="text">K5 2세대(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>정말 친절하고 시설도 좋았어요 저렴한 가격에 이용했고 셔틀버스 기사님들도 친절했어요 
셔틀버스도 진짜 좋은 차였습니다</p>
                        <ul>
                            <li>권*희 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.15 ~ 2020.04.19</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=4982648)"></div></div>
                    <div class="right">
                        <h6>녹원렌트카</h6>
                        <span class="text">쏘나타 뉴 라이즈(LPG)</span>
                        <span class="ico-star large"><span style="width:93%"></span></span>
                        <p>순환버스 대신 전화하면 바로 픽업 해 주십니다. 편리합니다.</p>
                        <ul>
                            <li>하*태 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.04.14 ~ 2020.04.16</li>
                        </ul>
                    </div>
                </li>
                
                    </ul>
                    </div><!--//item  -->
                
            
                
                
                    <div>
                    <ul>
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=4982648)"></div></div>
                    <div class="right">
                        <h6>특별한렌트카</h6>
                        <span class="text">쏘나타 뉴 라이즈(LPG)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>제주여행하면서 잘 썼습니다. 일단 차에 타자마자 차에서 좋은 냄새~~~  내외부 세차도 깔끔하고.. 청결도 만점요.. 공항에서도 가깝고 직원분들도 모두 너무 친절하게 해주셔서 감사했습니다. 이것저것 쓰레기도 많았는데 그냥 차에 두고 내리라고해서 치워주신다고...  다음에도 이용할 의향 백퍼예요</p>
                        <ul>
                            <li>박*진 님</li>
                            <li>
                                
                                일반자차
                                
                                
                            </li>
                            <li>2020.04.14 ~ 2020.04.17</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=2177908)"></div></div>
                    <div class="right">
                        <h6>조아렌트카</h6>
                        <span class="text">아이오닉(전기/충전비유료)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>전기차를 타면 탈 수록 좋은 것 같습니다. 그리고 깔끔하게 친절하게 대응해주는 직원의 고객 챙기는 마인드도 좋았구요.</p>
                        <ul>
                            <li>장*용 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.03.13 ~ 2020.03.14</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=12958975)"></div></div>
                    <div class="right">
                        <h6>제주명품렌트카</h6>
                        <span class="text">엑센트(18년~)(휘)</span>
                        <span class="ico-star large"><span style="width:93%"></span></span>
                        <p>일단 차상태 너무 좋았구여 ㅎㅎㅎ 대신 셔틀 기다리는게 너무 오래걸렸어요 직원들도 친절하고 제주 먹거리랑 상품도 주시고 여기 또 이용할꺼에요 짱</p>
                        <ul>
                            <li>임*애 님</li>
                            <li>
                                
                                
                                
                                
                            </li>
                            <li>2020.02.29 ~ 2020.03.01</li>
                        </ul>
                    </div>
                </li>
                
            
                
                
                <li>
                    <div class="img-wrap-responsive"><div style="background-image:url(/api/search/fileImage.do?vhcleSn=13966503)"></div></div>
                    <div class="right">
                        <h6>제주공항렌트카</h6>
                        <span class="text">코나 EV(전기/충전비유료)</span>
                        <span class="ico-star large"><span style="width:100%"></span></span>
                        <p>차량 인수 반납 다 신속합니다

충전료 일 5천원은 렌트 기간 다 안 해도 되구요

하루만 하면 마지막 반납때 충전 안 해도 되서 편리하고 좋아요

제가 제주를 자주 가는 편이라 여러 군데 렌트회사에서 렌트를 해 봤는데 여기가 반납할때 돈 더 받으려고 엉뚱한 얘기를 안 해서 좋습니다
</p>
                        <ul>
                            <li>손*현 님</li>
                            <li>
                                
                                
                                완전자차
                                
                            </li>
                            <li>2020.01.05 ~ 2020.01.08</li>
                        </ul>
                    </div>
                </li>
                
                    </ul>
                    </div><!--//item  -->
                
            
        </div>
        
        <!-- <div class="controls">
            <a class="left carousel-control" href="#carousel-review" role="button" data-slide="prev">Previous</a>
            <a class="right carousel-control" href="#carousel-review" role="button" data-slide="next">Next</a>
        </div>
    </div> -->
    </div><!--//content-wrap-->
</div><!--//reivew-->






<!-- <div style="display: none;">
    <a href="/home/search/siteMap.do">사이트 맵</a><br/>
    <a href="/m/main/main.do">모바일 페이지</a><br/>
</div>
</div>//container -->











  

<!-- <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-74306059-1', 'auto');
  ga('send', 'pageview');

	
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-57469759-4', 'auto');
  ga('send', 'pageview');

	
</script> -->





<!-- <script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 881135612;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script> -->

<!-- <noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/881135612/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript> -->

<!-- <script type="text/javascript">
    var roosevelt_params = {
        retargeting_id:'Bg2sOwQB-uSIzDzrFZ8Ldg00',
        tag_label:'-1XYTc5iRVSuLnZkdbkIJA'
    };
</script>
<script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>

<script type="text/javascript">
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_20dfb1703876";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script> -->


<!-- 메인 베너 자동으로 넘어감  -->
 <script type="text/javascript">var _kmq = _kmq || [];  
var _kmk = _kmk || '9138ed4c6de26302d229176497fbc8bb2087d2d5';
function _kms(u){
  setTimeout(function(){
    var d = document, f = d.getElementsByTagName('script')[0],
    s = d.createElement('script');
    s.type = 'text/javascript'; s.async = true; s.src = u;
    f.parentNode.insertBefore(s, f);
  }, 1);
}
_kms('//i.kissmetrics.com/i.js');
_kms('//scripts.kissmetrics.com/' + _kmk + '.2.js');
</script> 


<!-- <script type="text/javascript">
var fby = fby || [];
fby.push(['showTab', {id: '11497', position: 'right', color: '#000'}]);
(function () {
    var f = document.createElement('script'); f.type = 'text/javascript'; f.async = true;
    f.src = '//cdn.feedbackify.com/f.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(f, s);
})();
</script> -->

<!-- WIDERPLANET  SCRIPT START 2017.6.7 -->

<!-- <div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",
		ti:"29676",
		ty:"Home",
		device:"web"

	};
})); -->

</script>
<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
<!-- // WIDERPLANET  SCRIPT END 2017.6.7 -->

<!-- N2S Start -->
<script language="javascript" src="//web.n2s.co.kr/js/_n2s_sp_log_jejubnf.js"></script>
<!-- N2S End -->

<!-- MObon Tracker v3.1 [common] start -->
<script type="text/javascript">
<!--
	function mobRf(){
  		var rf = new EN();
		rf.setSSL(true);
  		rf.sendRf();
	}
  //-->
</script>

<!-- <script src="https://cdn.megadata.co.kr/js/enliple_min2.js" defer="defer" onload="mobRf()"></script> -->


<!-- Mobon Tracker v3.1 [common] end -->

<!-- KAKAO PIXEL BEGIN -->
<!-- <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfitstatic/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('3084129929487956298').pageView();
</script> -->
<!-- KAKAO PIXEL END -->

<!-- DSP ë¦¬íê²í Checking Script V.201603 Start-->
<!-- <script type="text/javascript" async="true">
function dsp_loadrtgJS(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("script");a.type="text/javascript";null!=c&&(a.charset="euc-kr");a.src=b;a.async="true";d.appendChild(a)}function dsp_load_rtg(b){dsp_loadrtgJS(("https:"==document.location.protocol?" https://":" http://")+b,"euc-kr")}dsp_load_rtg("realdmp.realclick.co.kr/rtarget/rtget.js?dsp_adid=jejubnf");
</script> -->
<!-- DSP ë¦¬íê²í Checking Script V.201603 End-->

<!-- Tracking Script Start 2.0 -->
<!-- <script type="text/javascript" async="true">
var dspu = "XA5amVqdWJuZg";      // === (íì)ê´ê³ ì£¼key (ë³ê²½íì§ë§ì¸ì) ===
var dspu,dspt,dspo,dspom; 
function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write('<span id=dsp_spn style=display:none;></span>');}
loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
</script> -->
<!-- Tracking Script End 2.0 -->




<!-- AceCounter Log Gathering Script V.7.5.AMZ2019080601 -->

<!-- <script language='javascript'>
	var _AceGID=(function(){var Inf=['gtp8.acecounter.com','8080','AH5A43445176807','AW','1','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script> -->

<!-- <noscript><img src='http://gtp8.acecounter.com:8080/?uid=AH5A43445176807&je=n&' border='0' width='0' height='0' alt=''></noscript>	 -->
<!-- AceCounter Log Gathering Script End -->
<!-- AceClick WebSite Gathering Script V0.91.20170523 -->
<!-- <script type="text/Javascript">
if(typeof(AMRS_GC)=='undefined'){
    var AMRS_O=[];var AMRS_CK = new Image();var AMRS_GC='AG3A4389851135';var AMRS_GD='mrsg.aceclick.co.kr';var AMRS_GP='8080';var AMRS_TI=(new Date()).getTime();
    var AMRS_PR = location.protocol=="https:"?"https://"+AMRS_GD+":843":"http://"+AMRS_GD+":"+AMRS_GP; AMRS_CK.src = AMRS_PR+'/?cookie';
    if(typeof(Array.prototype.push)!='undefined'){ AMRS_O.push(AMRS_CK);}
    var _AMSC = document.createElement('script');var _AMSM = document.getElementsByTagName('script')[0];_AMSC.src=(location.protocol.indexOf('http') == 0 ? location.protocol : 'http:') + '//mrss.aceclick.co.kr/aceclick.js?rt='+AMRS_TI;_AMSM.parentNode.insertBefore(_AMSC, _AMSM);
}
</script> -->


<!-- AceClick WebSite Gathering Script End V0.91.20170523 -->








  

<script type="text/javascript">
	
	;(function(jQuery) {
		
		makeCalendar('date');
		fncDrawCalendarPanelClass();
		
	})(jQuery);
	
	//초기 달력 그리기
	function fncDrawCalendarPanelClass() {
		
		var defaultBeginDe = jQuery("#resveBeginDe").val();
		var defaultEndDe = jQuery("#resveEndDe").val();
		
		jQuery("td[data-num="+defaultBeginDe+"]").addClass("selected start");
		jQuery("td[data-num="+defaultEndDe+"]").addClass("selected end");
		jQuery("#clickStartDate_").val(defaultBeginDe);
		jQuery("#clickEndDate_").val(defaultEndDe);
		
		
		// 사이 날짜 구하기
		var startDate = String(defaultBeginDe);
		var endDate = String(defaultEndDe);
		
		// 시작 날짜
		var sYear = startDate.substring(0,4);
		var sMonth = startDate.substring(4,6);
		var sDay= startDate.substring(6,8); 
		
		// 종료 날짜
		var eYear = endDate.substring(0,4);
		var eMonth = endDate.substring(4,6);
		var eDay= endDate.substring(6,8);
		
		var sDate = new Date(sYear, Number(sMonth)-1, sDay);  
		var eDate = new Date(eYear, Number(eMonth)-1, eDay);
		
		var dataNum = startDate;
		
		while(dataNum <= endDate){
			
			jQuery("td[data-num="+dataNum+"]").removeClass("open").addClass("selected between")
			dataNum = date_add(dataNum, 1);
			
		}
	}
	
	function nextMonth(id , date){
		if($('#next').hasClass("on") == true){
			makeCalendar(id, date);
			$("#next").removeClass("on");
		 	$("#prev").addClass("on"); 
		}else{
			alert("최대 90일 까지 조회 가능합니다.");
			return false;
		}
	}
	
	function prevMonth(id , date){
		if($('#prev').hasClass("on") == true){
			makeCalendar(id, date);
			$("#next").removeClass("on");
		 	$("#prev").addClass("on"); 
		}else{
			alert("이전날짜는 조회 할 수 없습니다.");
			return false;			
		}
	}
	
	$(document).on('click','#prev',function(){
		
		$("#prev").removeClass("on");
		$("#next").addClass("on");
	
	});

	function fncClickStartTime(value){
		
		if(value == 20){		
			jQuery(".clickStartMin option").remove();
			jQuery(".clickStartMin").append('<option value="00">00</option>');
		}
	}
	
	function fncClickEndTime(value){
		if(value == 20){
			jQuery(".clickEndMin option").remove();
			jQuery(".clickEndMin").append('<option value="00">00</option>');
		}
	}
	
	function tdClick(calDate, obj){
		
		if(jQuery("#clickFlag").val() == "1"){
			
			jQuery("#clickStartDate_").val("");
			jQuery("#clickEndDate_").val("");
			
	 		var $this = $("td[data-num='"+calDate+"']");
	 		
	 		jQuery("td").removeClass('selected start');
	 		jQuery("td").removeClass('selected between');
	 		jQuery("td").removeClass('selected end');
	 		
	 		jQuery("td").each(function() {
	 			if(!(jQuery(this).hasClass('selected') || jQuery(this).hasClass('start') || jQuery(this).hasClass('between') || jQuery(this).hasClass('end') || jQuery(this).hasClass('today') || jQuery(this).hasClass('closed')) ){
	 				jQuery(this).addClass('open');
	 			}
	 		});
	 		
	 		$this.addClass('selected start');
			
			jQuery("#clickStartDate_").val(calDate);
			
			var startDate_ = jQuery("#clickStartDate_").val();
			var startDate = String(startDate_);
			
			if( startDate > 20200805) {
			    alert("최대 90일까지 예약 가능합니다.");
			    jQuery("td").removeClass('selected start');
		 		jQuery("td").removeClass('selected between');
		 		jQuery("td").removeClass('selected end');
				jQuery("#clickFlag").val(1);	
			    return false;
			}
			
			//modal-header에 Setting 
			var _calDate = calDate+"";
			
			var cYear = _calDate.substring(0,4);
			var cMonth = _calDate.substring(4,6);
			var cDay = _calDate.substring(6,8);
			
			var clickDate = cYear+"."+cMonth+"."+cDay;
			
			// 요일 구하기
			var _clickDay = new Date(cYear, (Number(cMonth)-1) , cDay);
			
			var clickDay = _clickDay.format('D');
			
			jQuery(".clicksDate").html(clickDate+'<small>'+clickDay+'요일</small>');
			
			jQuery("#clickFlag").val(2);	
		
		}else if(jQuery("#clickFlag").val() == "2"){

			var startDate_ = jQuery("#clickStartDate_").val();
			var endDate_ = calDate
			
			// 두 날짜 간 차이 구하기
			var startDate = String(startDate_);
			var endDate = String(endDate_);
			
			// 시작 날짜
			var sYear = startDate.substring(0,4);
			var sMonth = startDate.substring(4,6);
			var sDay= startDate.substring(6,8); 
			
			// 종료 날짜
			var eYear = endDate.substring(0,4);
			var eMonth = endDate.substring(4,6);
			var eDay= endDate.substring(6,8);
			
			var sDate = new Date(sYear, Number(sMonth)-1, sDay);  
			var eDate = new Date(eYear, Number(eMonth)-1, eDay);
			
			var diffDate = -(sDate.getTime() - eDate.getTime())/1000/60/60/24;  
			
			var $this = $("td[data-num='"+calDate+"']");
			
			if( endDate > 20200805) {
			    alert("최대 90일까지 예약 가능합니다.");
			    jQuery("td").removeClass('selected start');
		 		jQuery("td").removeClass('selected between');
		 		jQuery("td").removeClass('selected end');
				jQuery("#clickFlag").val(1);	
			    return false;
			}
			
			if(diffDate > 6){
				alert("차량 대여 기간은 7일까지 가능합니다.");
				jQuery("td").removeClass('selected start');
		 		jQuery("td").removeClass('selected between');
		 		jQuery("td").removeClass('selected end');
				jQuery("#clickFlag").val(1);	
				return false;
			}
			
			if(diffDate < 0){
				jQuery("td").removeClass('selected start');
				$this.addClass('selected start');
				jQuery("#clickStartDate_").val(calDate);
				
				var _calDate1 = calDate+"";
				
				var cYear1 = _calDate1.substring(0,4);
				var cMonth1 = _calDate1.substring(4,6);
				var cDay1 = _calDate1.substring(6,8);
				
				var clickDate1 = cYear1+"."+cMonth1+"."+cDay1;
				
				// 요일 구하기
				var _clickDay1 = new Date(cYear1, (Number(cMonth1)-1) , cDay1);
				
				var clickDay1 = _clickDay1.format('D');
				
				jQuery(".clicksDate").html(clickDate1+'<small>'+clickDay1+'요일</small>');
				
				jQuery("#clickFlag").val(2);
				
				return false;
			}
			
			if(diffDate == 0){
				alert("렌트카 예약은 24시간 이상 대여만 가능합니다.");
				jQuery("td").removeClass('selected start');
		 		jQuery("td").removeClass('selected between');
		 		jQuery("td").removeClass('selected end');
				jQuery("#clickFlag").val(1);	
				return false;
			}
			
			var dataNum = startDate;
			
			while(dataNum < endDate){
				
				jQuery("td[data-num="+dataNum+"]").removeClass("open").addClass("selected between")
				dataNum = date_add(dataNum, 1);
			}
			
	 		//jQuery(".pre-selected").removeClass('pre-selected').addClass("selected start");
	 		
	 		$this.removeClass("open").addClass('selected end');
	 		
			jQuery("#clickEndDate_").val(calDate);
			
			//modal-header에 Setting 
			var _calDate = calDate+"";
			
			var cYear = _calDate.substring(0,4);
			var cMonth = _calDate.substring(4,6);
			var cDay = _calDate.substring(6,8);
			
			var clickDate = cYear+"."+cMonth+"."+cDay;
			
			// 요일 구하기
			var _clickDay = new Date(cYear, (Number(cMonth)-1) , cDay);
			
			var clickDay = _clickDay.format('D');
			
			jQuery(".clickeDate").html(clickDate+'<small>'+clickDay+'요일</small>');
			
			jQuery("#clickFlag").val(1);
		}
		
 	}
	
	function date_add(sDate, nDays) {
		   
		var yy = Number(sDate.substring(0,4));
		var mm = Number(sDate.substring(4,6));
		var dd= Number(sDate.substring(6,8)); 
	 
	    var d = new Date(yy, mm-1, dd+nDays);
	 
	    yy = d.getFullYear();
	    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;
	    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;
	 
	    return ''+yy+mm+dd;
	}
	
	function makeCalendar(id, date) {
		
		var makeCalendar = jQuery("."+id);
		
		if( typeof( date ) !== 'undefined' ) {
			date = date.split('-');
			date[1] = date[1] - 1;
			date = new Date(date[0], date[1], date[2]);
		} else {
			var date = new Date();
		}
		var currentYear = date.getFullYear();
		//년도를 구함
		
		var currentMonth = date.getMonth() + 1;
		//월을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
		
		var currentDate = date.getDate();
		//오늘 일자.
		
		date.setDate(1);
		var currentDay = date.getDay();
		//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
		
		var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
		var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
			lastDate[1] = 29;
		//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
		
		var currentLastDate = lastDate[currentMonth-1];
		var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
		//총 몇 주인지 구함.
		
		if(currentMonth != 1)
			var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + 1;
		else
			var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + 1;
		//만약 이번달이 1월이라면 1년 전 12월로 출력.
		
		if(currentMonth != 12) 
			var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + 1;
		else
			var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + 1;
		//만약 이번달이 12월이라면 1년 후 1월로 출력.
		
		if(currentMonth != 11) 
			var doubleNextDate = currentYear + '-' + ( currentMonth + 2 ) + '-' + 1;
		else
			var doubleNextDate = ( currentYear + 1 ) + '-' + 1 + '-' + 1;
		//만약 이번달이 11월이라면 1년 후 1월로 출력.
		
		if( currentMonth < 10 )
			var currentMonth = '0' + currentMonth;
		//10월 이하라면 앞에 0을 붙여준다.
		
		
		var calendar = '';
			
		calendar += '<button type="button" id ="prev" class="ico-prev" onclick ="prevMonth(\'' +  id + '\', \'' + prevDate + '\')"></button>';
		calendar += '<div class="calendar">';
		calendar += '<div class="header">';
		calendar += '	<h3 class="h3">'+currentYear+'. '+ currentMonth+'</h3>';
		calendar += '</div>';
		calendar += '<table>';
		calendar += '	<thead>';
		calendar += '   		<tr>';
		calendar += '      	 	<th scope="col">일</th>';
		calendar += '			<th scope="col">월</th>';
		calendar += '			<th scope="col">화</th>';
		calendar += '			<th scope="col">수</th>';
		calendar += '			<th scope="col">목</th>';
		calendar += '			<th scope="col">금</th>';
		calendar += '			<th scope="col">토</th>';
		calendar += '		</tr>';
		calendar += '	</thead>';
		calendar += '<tbody>';
		
		var dateNum = 1 - currentDay;
		
		for(var i = 0; i < week; i++) {
 			
			calendar += '			<tr>';
 			
			for(var j = 0; j < 7; j++, dateNum++) {
 				if( dateNum < 1 || dateNum > currentLastDate ) {
 					calendar += '				<td ' + dateString[j] + '"> </td>';
 					continue;
 				}
 				var tDate = new Date();
 				var calDate;

 				if(dateNum < 10){
 					calDate =  currentYear+""+currentMonth+"0"+dateNum;	
 				} else {
 					calDate =  currentYear+""+currentMonth+""+dateNum;
 				}
 		 		
 				var compare = currentYear+"/"+currentMonth+"/"+dateNum;
					
					var compareDate = new Date (compare);
					
					tDate.setHours(0, 0, 0, 0);
					compareDate.setHours(0, 0, 0, 0);
					
 				if(tDate.getTime() > compareDate.getTime()){
 					calendar += '<td class="closed"' + dateString[j] + '>' + dateNum;

 				}else if(tDate.getTime() == compareDate.getTime()){
					
					if(dateNum <10){
						calendar += '<td data-num="'+currentYear+currentMonth+"0"+dateNum+'" class="today open" id="today" ' + dateString[j] + ' onclick="tdClick('+calDate+',this)">' + dateNum;	
 					}else{
 						calendar += '<td data-num="'+currentYear+currentMonth+dateNum+'" class="today open" id="today" ' + dateString[j] + ' onclick="tdClick('+calDate+',this)">' + dateNum;
 					}
					
 				}else{
 					if(dateNum <10){
 						calendar += '<td data-num="'+currentYear+currentMonth+"0"+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;	
 					}else{
 						calendar += '<td data-num="'+currentYear+currentMonth+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;
 					}
				}
			}
			calendar += '				</td>';
			calendar += '			</tr>';
		}					
		calendar += '			</tbody>';
		calendar += '		</table>';
		calendar += '	</div>';
		calendar += '	<div class="calendar calendar2" id="calendar2"></div>';
		calendar += '	<div class="calendar calendar3" id="calendar3"></div>';
		calendar += '<button type="button" id="next" class="ico-next on" onclick ="nextMonth(\'' +  id + '\', \'' + nextDate + '\')"></button>';
		
		makeCalendar.html(calendar);
		makeCalendar2('calendar2', nextDate);
		makeCalendar3('calendar3', doubleNextDate);
		
	}
	
	function makeCalendar2(id, date) {
		
		var makeCalendar2 = jQuery("."+id);
		
		if( typeof( date ) !== 'undefined' ) {
			date = date.split('-');
			date[1] = date[1] - 1;
			date = new Date(date[0], date[1], date[2]);
		} else {
			var date = new Date();
		}
		var currentYear = date.getFullYear();
		//년도를 구함
		
		var currentMonth = date.getMonth() + 1;
		//월을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
		
		var currentDate = date.getDate();
		//오늘 일자.
		
		date.setDate(1);
		var currentDay = date.getDay();
		//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
		
		var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
		var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
			lastDate[1] = 29;
		//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
		
		var currentLastDate = lastDate[currentMonth-1];
		var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
		//총 몇 주인지 구함.
		
		if( currentMonth < 10 )
			var currentMonth = '0' + currentMonth;
		//10월 이하라면 앞에 0을 붙여준다.
		
		if(currentMonth != 1)
			var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
		else
			var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
		//만약 이번달이 1월이라면 1년 전 12월로 출력.
		
		if(currentMonth != 12) 
			var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
		else
			var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
		//만약 이번달이 12월이라면 1년 후 1월로 출력.
		
		
		var calendar = '';
			
		calendar += '<div class="header">';
		calendar += '	<h3 class="h3">'+currentYear+'. '+ currentMonth+'</h3>';
		calendar += '</div>';
		calendar += '<table>';
		calendar += '	<thead>';
		calendar += '   		<tr>';
		calendar += '      	 	<th scope="col">일</th>';
		calendar += '			<th scope="col">월</th>';
		calendar += '			<th scope="col">화</th>';
		calendar += '			<th scope="col">수</th>';
		calendar += '			<th scope="col">목</th>';
		calendar += '			<th scope="col">금</th>';
		calendar += '			<th scope="col">토</th>';
		calendar += '		</tr>';
		calendar += '	</thead>';
		calendar += '<tbody>';
		
		var dateNum = 1 - currentDay;
		
		for(var i = 0; i < week; i++) {
 			
			calendar += '			<tr>';
 			
			for(var j = 0; j < 7; j++, dateNum++) {
 				if( dateNum < 1 || dateNum > currentLastDate ) {
 					calendar += '				<td ' + dateString[j] + '"> </td>';
 					continue;
 				}
 				var tDate = new Date();
 				var calDate;

 				if(dateNum < 10){
 					calDate =  currentYear+""+currentMonth+"0"+dateNum;	
 				} else {
 					calDate =  currentYear+""+currentMonth+""+dateNum;
 				}
 		 		
 				var compare = currentYear+"/"+currentMonth+"/"+dateNum;
					
					var compareDate = new Date (compare);
					
					tDate.setHours(0, 0, 0, 0);
					compareDate.setHours(0, 0, 0, 0);
					
 				if(tDate.getTime() > compareDate.getTime()){
 					calendar += '<td class="closed"' + dateString[j] + '>' + dateNum;

 				}else if(tDate.getTime() == compareDate.getTime()){
					calendar += '<td class="today open"' + dateString[j] + '>' + dateNum;
					
 				}else{
 					if(dateNum <10){
 						calendar += '<td data-num="'+currentYear+currentMonth+"0"+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;	
 					}else{
 						calendar += '<td data-num="'+currentYear+currentMonth+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;
 					}
 					
				}
			}
			calendar += '				</td>';
			calendar += '			</tr>';
		}					
		calendar += '			</tbody>';
		calendar += '		</table>';
		
		makeCalendar2.html(calendar);
	}
	
	function makeCalendar3(id, date) {
		
		var makeCalendar3 = jQuery("."+id);
		
		if( typeof( date ) !== 'undefined' ) {
			date = date.split('-');
			date[1] = date[1] - 1;
			date = new Date(date[0], date[1], date[2]);
		} else {
			var date = new Date();
		}
		var currentYear = date.getFullYear();
		//년도를 구함
		
		var currentMonth = date.getMonth() + 1;
		//월을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
		
		var currentDate = date.getDate();
		//오늘 일자.
		
		date.setDate(1);
		var currentDay = date.getDay();
		//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
		
		var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
		var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
			lastDate[1] = 29;
		//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
		
		var currentLastDate = lastDate[currentMonth-1];
		var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
		//총 몇 주인지 구함.
		
		if( currentMonth < 10 )
			var currentMonth = '0' + currentMonth;
		//10월 이하라면 앞에 0을 붙여준다.
		
		if(currentMonth != 1)
			var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
		else
			var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
		//만약 이번달이 1월이라면 1년 전 12월로 출력.
		
		if(currentMonth != 12) 
			var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
		else
			var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
		//만약 이번달이 12월이라면 1년 후 1월로 출력.
		
		var calendar = '';
			
		calendar += '<div class="header">';
		calendar += '	<h3 class="h3">'+currentYear+'. '+ currentMonth+'</h3>';
		calendar += '</div>';
		calendar += '<table>';
		calendar += '	<thead>';
		calendar += '   		<tr>';
		calendar += '      	 	<th scope="col">일</th>';
		calendar += '			<th scope="col">월</th>';
		calendar += '			<th scope="col">화</th>';
		calendar += '			<th scope="col">수</th>';
		calendar += '			<th scope="col">목</th>';
		calendar += '			<th scope="col">금</th>';
		calendar += '			<th scope="col">토</th>';
		calendar += '		</tr>';
		calendar += '	</thead>';
		calendar += '<tbody>';
		
		var dateNum = 1 - currentDay;
		
		for(var i = 0; i < week; i++) {
 			
			calendar += '			<tr>';
 			
			for(var j = 0; j < 7; j++, dateNum++) {
 				if( dateNum < 1 || dateNum > currentLastDate ) {
 					calendar += '				<td ' + dateString[j] + '"> </td>';
 					continue;
 				}
 				var tDate = new Date();
 				var calDate;

 				if(dateNum < 10){
 					calDate =  currentYear+""+currentMonth+"0"+dateNum;	
 				} else {
 					calDate =  currentYear+""+currentMonth+""+dateNum;
 				}
 		 		
 				var compare = currentYear+"/"+currentMonth+"/"+dateNum;
					
					var compareDate = new Date (compare);
					
					tDate.setHours(0, 0, 0, 0);
					compareDate.setHours(0, 0, 0, 0);
					
 				if(tDate.getTime() > compareDate.getTime()){
 					calendar += '<td class="closed"' + dateString[j] + '>' + dateNum;

 				}else if(tDate.getTime() == compareDate.getTime()){
					calendar += '<td class="today open"' + dateString[j] + '>' + dateNum;
					
 				}else{
 					if(dateNum <10){
 						calendar += '<td data-num="'+currentYear+currentMonth+"0"+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;	
 					}else{
 						calendar += '<td data-num="'+currentYear+currentMonth+dateNum+'" class="open"' + dateString[j] + ' onclick="tdClick('+calDate+',this)">'+ dateNum;;
 					}
				}
			}
			calendar += '				</td>';
			calendar += '			</tr>';
		}					
		calendar += '			</tbody>';
		calendar += '		</table>';
		
		//makeCalendar3.innerHTML = calendar;
		makeCalendar3.html(calendar);
	}
</script>



<!-- <div class="footer">
    <div class="nav">
    	<ul>
            <li><a href="/home/about/view.do">회사소개</a></li>
            <li><a href="/home/partners/view.do">제휴사안내</a></li>
            <li><a href="/home/insurrance/view.do">보험안내</a></li>
            <li><a href="/home/privacy/view.do"><b>개인정보취급방침</b></a></li>
            <li><a href="/home/terms/view.do">이용약관</a></li>
        </ul>
        <div>
	        <ul>
	            <li><a href="https://play.google.com/store/apps/details?id=com.jejupass.rent&hl=ko" target="_blank" class="ico-googleplay">Google Play</a></li>
	            <li><a href="https://itunes.apple.com/kr/app/jejupaeseulenteuka-silsigan/id1136667702?mt=8" target="_blank" class="ico-appstore">App Store</a></li>
	        </ul>
	        <ul>
	            <li><a href="https://www.facebook.com/jejupass" target="_blank" class="ico-facebook">페이스북</a></li>
	            <li><a href="https://www.instagram.com/jejupass" target="_blank" class="ico-instagram">인스타그램</a></li>
	            <li><a href="http://blog.naver.com/jejubnf" target="_blank" class="ico-naverblog">네이버 블로그</a></li>
	            <li><a href="http://post.naver.com/my.nhn?memberNo=10004203" target="_blank" class="ico-naverpost">네이버 포스트</a></li>
	        </ul>
        </div>
    </div>
    <div class="info">
    	<div class="left">
	    	<ul>
	            <li>(주)캐플릭스</li>
	            <li>사업자등록번호 105-87-76000</li>
	            <li>통신판매신고 제2015-제주연동-43호</li>
	            <li>대표이사 윤형준</li>
	        </ul>
	        <ul>
	            <li>주소 63125 제주시 신광로 21, 4층</li>
	            <li>팩스 0505-009-6995</li>
	            <li>이메일 help@jejupass.co.kr</li>
	        </ul>
        </div>
    	<div class="right">
	    	<div class="item"><span class="ico-phone-w"></span><dl><dt>고객센터</dt><dd class="futuraH">1544-0445</dd></dl></div>
	    	<div class="item"><span class="ico-kakao"></span><dl><dt>카카오톡 1:1 상담</dt><dd>@제주패스렌트카</dd></dl></div>
			<div class="ico-clock-w">
				<dl><dt>월 - 금요일</dt><dd>09:00 - 18:00</dd></dl>
				<dl><dt>점심시간</dt><dd>12:00 - 13:00</dd></dl>
			</div>
        </div>
    </div>
    <div class="bottom">
    	<span class="award"></span>
    	<img src="static/images/img-logo-rapidssl.gif" alt="Secured by RapidSSL" class="ssl">
    </div>
    <a href="#top" id="affix-gotop" data-spy="affix"  data-offset-bottom="365" class="btn-gotop btn-show-scroll" style="display:none">Top</a>
</div>//footer -->

<!-- <script type="text/javascript">
$(document).ready(function(){
	$('.btn.tooltips').on('click',function (e) {
		var pos = $(this).offset();
		var dataClass = $(this).attr('data-tooltip-content');
		$('.tooltips-guide').hide();
		$(dataClass).css({'top':pos.top+9,'left':pos.left+30}).show();
	});
	$('.tooltip-close').on('click',function () {
		$(this).parent('.tooltips-guide').hide();
	});
	$('.tooltips-guide').mouseleave(function () {
		$('.tooltips-guide').hide();
	});
	$('.close-trigger').on("click", function() {
		event.preventDefault();
		$(this).trigger($(this).parents(".tooltip-content").next(".tooltip-close").click());
	});
});
</script> -->


<!-- <div class="tooltips-guide tooltip-premium-guide" id="tooltip-premium-guide">
	<div class="tooltip-title">프리미엄 예약 안내</div>
	<div class="tooltip-content">
		<strong class="text-black">프리미엄 예약은 ?</strong>
		<br>
		<strong class="text-point1">신차 & 상위옵션</strong>
		<p>출고 2년 미만의 신차로 상위 옵션으로 구성 된 차량만을 제공합니다.</p>
		<strong class="text-point1">무조건 100% 보장!</strong>
		<p>완전자차 무제한 보상 뿐만 아니라 타이어/휠, 단독사고 등 어떠한 사고도 보장되며, 휴차 보상료 또한 발생하지 않습니다.</p>
		<strong class="text-point1">무료 와이파이(준비중)</strong>
		<p>데이터 걱정 없는 무제한 데이터를 제공합니다.</p>
		<strong class="text-point1">특별 EVENT</strong>
		<p>제주패스가 엄선한 제주도의 다양한 인기 먹거리와 각종 특별 선물이 담긴  웰컴박스로 기분좋은 여행을 시작해보세요.</p>
		<div class="tc">
			<a href="/home/premiumGuide/view.do" class="btn btn-medium radius btn-point1">자세히보기</a>
		</div>
	</div>
	<button type="button" class="tooltip-close"><span class="text-hidden">닫기</span></button>
</div> -->
<!-- <div class="tooltips-guide tooltip-normal-guide" id="tooltip-normal-guide">
	<div class="tooltip-title">가격비교 예약 안내</div>
	<div class="tooltip-content">
		<strong class="text-black">가격비교 예약은 ?</strong>
		<p>제주도 렌터카 54개 업체와 협력하여 투명하고 공정한 렌터카 실시간 가격비교<br/>서비스를 제공하고 있습니다.</p>
		<strong class="text-black">보험안내</strong>
		<strong class="text-point1">차량손해면책제도 안내(자차보험)</strong>
		<p class="mg-b20">제주도 내 모든 렌트카업체는 운전자의 안전을 위해 법으로 '종합보험'에 가입되어 있습니다. 다만 렌트카 종합보험의 보상범위는 대인 / 대물 / 자손에 한정하며 본인 임차차량 손괴 즉, '자차'는 운전자
		개인이 해결해야 합니다.</p>
		<strong class="text-point1">자차보험 미선택시</strong>
		<p class="mg-b20">사고 발생 시 파손된 차량의 모든 수리비용 및 휴차보상료를 임차인이 부담합니다.</p>
		<strong class="text-point1">자차보험의 종류</strong>
		<p class="mg-b15">렌트카 회사마다 다르지만, 보통 일반자차, 슈퍼자차, 완전자차 등으로 구분됩니다.<br/>
		차량손해면책제도는 제주특별자치도 여객자동차운수사업조례 제 41조에서<br/> 대여약관에 기재토록 하고 있으며, 실내부품, 타이어, 휠, 네비게이션 등은<br/> 보험적용에서 제외됩니다.</p>
		<div class="tc">
			<a href="/home/insurrance/view.do" class="btn btn-medium radius btn-point1">자세히보기</a>
		</div>
	</div>
	<button type="button" class="tooltip-close"><span class="text-hidden">닫기</span></button>
</div> -->
<!-- <div class="tooltips-guide tooltip-age-guide" id="tooltip-age-guide">
	<div class="tooltip-title">운전자 연령 안내</div>
	<div class="tooltip-content">
		<strong class="text-point1">운전자 연령 안내</strong>
		<p class="mg-b20">제주패스렌트카는 업체별 차량 보험을  제공합니다.</p>
		<p class="mg-b20">선택하신 보험차량을 제공하기 위한 보험 규정 나이와 운전경력은 업체마다 차이가 있습니다.</p>
		<p class="mg-b20">제주패스렌트카에서는 만 21~25세 사이의 운전자의 경우 맞춤검색을 통해 쉽고 빠르게 예약하실 수 있습니다.</p>
		<strong class="text-point1">추가 운전자?</strong>
		<p class="mg-b20">추가운전자에 대한 규정은 대여조건과 동일하며  운전면허증을 지참하시고 업체로 동행방문 하셔야 등록이 가능합니다.</p>

		<div class="tc">
			<a href="#" class="btn btn-medium radius btn-point1">확인</a>
		</div>
	</div>
	<button type="button" class="tooltip-close"><span class="text-hidden">닫기</span></button>
</div> -->

<!-- <div class="tooltips-guide tooltip-premium-insrncCmpnstnLmt" id="tooltip-premium-insrncCmpnstnLmt">
	<div class="tooltip-title">보상/면제 범위</div>
	<div class="tooltip-content">
		<strong class="text-black">휴차 보상료</strong>
		<p>사고 발생 시 차량 수리기간 동안에 발생하는 업체 손실 비용</p>
		<strong class="text-black">단독사고</strong>
		<p>100% 본인 과실에 의한 단독사고 시 보험 적용에 대한 보장 여부</p>
		<strong class="text-black">휠/타이어</strong>
		<p>휠/타이어 파손(스크래치 포함)에 대한 보장 여부</p>
		<div class="tc">
			<a href="#" class="btn btn-medium radius btn-point1 close-trigger">닫기</a>
		</div>
	</div>
	<button type="button" class="tooltip-close"><span class="text-hidden">닫기</span></button>
</div>

<div class="tooltips-guide tooltip-best-rate-guarantee" id="tooltip-best-rate-guarantee">
	<div class="tooltip-title">최저가 보장제(BRG)란?</div>
	<div class="tooltip-content">
		<div class="tc" style="margin-bottom: 15px;"><img src="static/images/flag_ico_big.png"></div>
		<p class="text-black" style="margin-bottom: 10px !important;"><b>BRG(Best Rate Guarantee)</b> 이하 <b>‘최저가 보장제’</b>는<br>제주패스가 제주도 렌터카 업계 최초로 도입하였습니다.</p>
		<p class="text-black">현재 보고계신 렌터카가 예약 완료 후, 해당 업체의<br>최저가가 아닐 경우 가격의 <b>차액 200%</b>를 보상합니다.</p>
		<div class="tc">
			<a href="/home/report/guide.do" class="btn btn-medium radius btn-point1">더 알아보기</a>
		</div>
	</div>
	<button type="button" class="tooltip-close"><span class="text-hidden">닫기</span></button>
</div> -->


<!-- <script type="text/javascript">
(function(w, d, a){
    w.__beusablerumclient__ = {
        load : function(src){
            var b = d.createElement("script");
            b.src = src; b.async=true; b.type = "text/javascript";
            d.getElementsByTagName("head")[0].appendChild(b);
        }
    };w.__beusablerumclient__.load(a);
})(window, document, "//rum.beusable.net/script/b191104e100739u234/703900caf1");
</script> -->


</body>
</html>