	
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