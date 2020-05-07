function idCheckFun(obj){
	//window.open('idcheck2.jsp','id','left=300,top=100,width=410,height=310');
	//모델1 사용
	if($("input#id").val().length==0){
		alert("아이디를 입력하세요.");
		return false;
	}
	$.ajax({
		url:'idAjax.jsp', 
		//모델1 ajax사용 -> mvc 패턴시 .do로 변환
		type:'POST',
		dataType:'text',
		data:{id:$("input#id").val()},
		success:function(v){
			if(v.trim()=='true'){
				$("span#rsp").html("<b size=5px>이미 사용 중 입니다.</b>");
				$("input#id").focus();
			}else{
				$("span#rsp").html("<b size=5px>사용가능합니다.</b>");
			}
		},error:function(){
			alert('오류!');
		}
	});
	
}
function sendPost(){
	window.open('address.jsp','id','left=300,top=100,width=410,height=380');
}

$(function(){
	//id 입력 제약사항
	$("a#idCheck").click(function(){
		idCheckFun(this);
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
	
	//주소 입력 창
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
	
/*	//password2에 포커스를 잃었을때
	$("input#password2").blur(function(){	
	});
	*/
	
	$("a#send").click(function(){
		
		//비밀번호 제약사항
		if($("input#password2").val().length==0||$("input#password1").val().length==0){
			alert('비밀번호를 입력하세요.');
			$("input#password1").focus();
		}else if($("input#password1").val()!=$("input#password2").val()){
			alert('비밀번호를 학인하세요.');
			$("input#password1").focus();
			return false;
		}else{
			$("input[name='password']").val($("input[name='password2']").val());
		}
		
		
		//생년월일 제약사항
		if($("input[name='year']").val().length==0||$("input[name='month']").val().length==0||$("input[name='day']").val().length==0){
			alert('생년월일을 입력하세요.');
			$("input[name='year']").focus();
		}else{
			$("input[name='birth']").val($("input[name='year']").val()+"/"+$("input[name='month']").val()+"/"+$("input[name='day']").val());
			
		}
		
		//주소 제약사항
		if($("input[name='address1']").val().length==0||$("input[name='address2']").val().length==0){
			alert('주소를 입력하세요.');
			$("input[name='post1']").focus();
			return false;
		}else{
			$("input[name='address']").val($("input[name='post1']").val()+"-"+$("input[name='post2']").val()+$("input[name='address1']").val()+$("input[name='address2']").val());
		}
		
		//전화번호 제약사항
		if($("input[name='tel1']").val().length==0||$("input[name='tel2']").val().length==0||$("input[name='tel3']").val().length==0){
			alert("전화번호를 입력하세요.");
			$("input[name='tel1']").focus();
			return false;
		}else if((isNaN($("input[name='tel1']").val()))||(isNaN($("input[name='tel2']").val()))||(isNaN($("input[name='tel3']").val()))){
			alert("전화번호를 숫자로 입력하세요.");
			$("input[name='tel1']").focus();
			return false;
		}else{
			$("input[name='tel']").val($("input[name='tel1']").val()+"-"+$("input[name='tel2']").val()+"-"+$("input[name='tel3']").val());
		}
		
		//휴대폰 번호 제약사항
		if($("input[name='cp1']").val().length==0||$("input[name='cp2']").val().length==0||$("input[name='cp3']").val().length==0){
			alert("휴대번호를 입력하세요.");
			$("input[name='cp1']").focus();
			return false;
		}else if((isNaN($("input[name='cp1']").val()))||(isNaN($("input[name='cp2']").val()))||(isNaN($("input[name='cp3']").val()))){
			alert("휴대번호를 숫자로 입력하세요.");
			$("input[name='cp1']").focus();
			return false;
		}else{
			$("input[name='cp']").val($("input[name='cp1']").val()+"-"+$("input[name='cp2']").val()+"-"+$("input[name='cp3']").val());
		}		
		
		//이메일 제약사항
		//-직접입력을 선택할 경우
		$("select#sel").change(function(){
			if($(this).val()=='direct'){
				$("input[name='email2']").val('');
				$("input[name='email2']").attr("disabled",false);
			}else{
				$("input[name='email2']").attr("disabled",true);
				$("input[name='email2']").val($("select[name='email3']").val());
			}
		});
		//-입력하지 않았을 경우
		if($("input[name='email1']").val().length==0||$("input[name='email2']").val().length==0){
			alert('이메일을 입력하세요.');
			$("input[name='email1']").val('');
			$("input[name='email2']").val('');
			$("select#sel").prop("selectedIndex",0);
			return false;
		}else{
			$("input[name='email']").val($("input[name='email1']").val()+"@"+$("input[name='email2']").val());			
		}
		//전송
		$("form").submit();
		
	});
});









