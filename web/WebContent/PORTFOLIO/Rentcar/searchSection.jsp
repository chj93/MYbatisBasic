<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="static/css/searchSection.css">
</head>
<body>
		<div class="search-car-input">
		<div id="YMD" class="search-section select-date">
		<button type="button">
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
		<div><p><span>!</span>08:00~20:00 외 대여 &#47; 반납을 원하실 경우 예약 전 고객센터 &#40;1544-0445&#41;로 문의해주시기 바랍니다.</p></div>
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
			<label><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_0" value="01"     />경형</label>
			<label><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_1" value="02"     />소형</label>
			<label><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_2" value="07"     />준중형</label>
			<label><input name="vhctySeCodes" type="checkbox" id="vhctySeCodes_3" value="03"     checked="checked" />중형</label>

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




</body>
</html>