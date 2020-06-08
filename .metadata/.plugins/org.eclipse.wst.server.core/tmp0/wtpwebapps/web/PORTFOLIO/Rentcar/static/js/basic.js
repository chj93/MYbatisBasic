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
	
	