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
});









