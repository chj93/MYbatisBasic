/**
 * 서비스 준비중 입니다.
 */
function cfServiceNotYet() {
	alert("서비스 준비중 입니다.");
}

/**
 * ajax통신에러
 */
function cfAjaxError(request, status, error) {
	alert(request.responseText);
}

/**
 * ajax통신은성공이고 그밖에에러
 */
function cfShowJsonError(jsonObject) {
	alert("오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
}

/**
 * ajax통신은성공이고 그밖에에러
 */
function cfAjaxErrorMessage() {
	alert("통신이 원활하지 않습니다. 잠시 후 다시 시도해주세요.");
}

/**
 * 날짜 포멧 변환
 * @param format
 * @param strDate
 * @returns
 */
function cfDateFormat(format, strDate) {
	
	var _strDate = strDate;
	_strDate = _strDate.split(".").join("");
	_strDate = _strDate.split("-").join("");
	_strDate = _strDate.split(" ").join("");
	_strDate = _strDate.split(":").join("");
	
	var date = null;
	
	if(_strDate.length == 14) { //yyyyMMddHHmmss
		
		var year = Number(_strDate.substring(0, 4));
		var month = Number(_strDate.substring(4, 6)) - 1;
		var day = Number(_strDate.substring(6, 8));
		var hour = Number(_strDate.substring(8, 10));
		var mimute = Number(_strDate.substring(10, 12));
		var second = Number(_strDate.substring(12, 14));
		
		date = new Date(year, month, day, hour, mimute, second);
		
	} else if(_strDate.length == 8) { //yyyyMMdd
		
		var year = Number(_strDate.substring(0, 4));
		var month = Number(_strDate.substring(4, 6)) - 1;
		var day = Number(_strDate.substring(6, 8));
		var hour = 12;
		var mimute = 0;
		var second = 0;
		
		date = new Date(year, month, day, hour, mimute, second);
	}
	
	return date.format(strDate);
}

/*
 * 날짜포맷에 맞는지 검사
*/
function cfIsDateFormat(d) {
	var df = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
	return d.match(df);
}

function isValidNumber(data) {
	var format = /^[0-9]*$/g;
	if (data.search(format) == -1)
		return false;
	return true;
}

/*
 * 윤년여부 검사
 */
function cfIsLeaf(year) {
	
	var leaf = false;

	if (year % 4 == 0) {
		leaf = true;

		if (year % 100 == 0) {
			leaf = false;
		}

		if (year % 400 == 0) {
			leaf = true;
		}
	}

 return leaf;
}

/*
 * 날짜가 유효한지 검사
*/
function cfIsValidDate(d) {
	// 포맷에 안맞으면 false리턴
	if (!isValidNumber(d)) {
		return false;
	}

	var month_day = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

	if(d.length != 8) {
		return false;
	}
	
	var year = Number(d.substring(0, 4));
	var month = Number(d.substring(4, 6));
	var day = Number(d.substring(6, 8));

	// 날짜가 0이면 false
	if (day == 0) {
		return false;
	}

	var isValid = false;

	// 윤년일때
	if (cfIsLeaf(year)) {
		if (month == 2) {
			if (day <= month_day[month - 1] + 1) {
				isValid = true;
			}
		} else {
			if (day <= month_day[month - 1]) {
				isValid = true;
			}
		}
	} else {
		if (day <= month_day[month - 1]) {
			isValid = true;
		}
	}

	return isValid;
}