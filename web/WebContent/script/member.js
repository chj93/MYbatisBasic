function idCheckFun(){
	window.open('idcheck2.jsp','id','left=300,top=100,width=410,height=310');
}
function sendPost(){
	window.open('address.jsp','id','left=300,top=100,width=410,height=380');
}

$(function(){
	$("a#idCheck").click(function(){
		idCheckFun();
	});
	$("input#idImg").click(function(){
		if($("input#id").val().length==0){
			alert('아이디를 작성해주세요.');
			return false;
		}else{
			
		}
		document.idFrm.submit();
	});
	
	$("a#here").click(function(){
		//alert(this.name);
		window.opener.document.joinFrm.id.value=this.name;
		//opener = 부모창의 주소를 가르킴
		self.close();
	});
	
	$("input#searchDong").click(function(){
		if($("input#dong").val().length==0){
			alert('주소를 입력하세요.');
		return false;
		}
		//document.serchFrm.submit();
		$("form[name='searchFrm']").submit();
	});
	
	
	$("a[name='addr']").click(function(){
		//alert($(this).text());
		//alert($(this).text().split("-")[0]);
		//console.log($(this).text().split("-")[1]);
		var add=$(this).text().trim();
		
		window.opener.document.joinFrm.post1.value=add.split("-")[0];
		window.opener.document.joinFrm.post2.value=add.split("-")[1];
		window.opener.document.joinFrm.address1.value=add.split("-")[2];
		self.close();
	});
	
	$("a#send").click(function(){
		//제약사항
		$("input[name='password']").val($("input[type='password']").val());
		//"input[name='password']"에 "input[type='password']"값을 전송
		
		$("input[name='birth']").val($("input[name='year']").val()+"/"+$("input[name='month']").val()+"/"+$("input[name='day']").val());
		$("form").submit();
		
	});
});









