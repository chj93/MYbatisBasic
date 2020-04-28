/* clock.js */

function clockFun(){
	
	var span=document.getElementById("sp");
	var now=new Date();
	span.innerHTML="<b>현재시간</b>"
	span.innerHTML+=now.getFullYear()+"/"+(now.getMonth()+1)+"/"+now.getDate()+"/"+now.getHours()+"/"+now.getMinutes()+"/"+now.getSeconds();
	setTimeout("clockFun()",100);
}