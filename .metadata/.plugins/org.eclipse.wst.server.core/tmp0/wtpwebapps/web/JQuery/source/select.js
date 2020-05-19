/* select.js */
//-- JQuery/basic4/JQex2.jsp
// mode==이펙트, flag==선택유무 0==기본모드

function selectBoxDisplay(mode,flag){
	//sel2, sel3 hide
	if(mode=='hideAll'&&flag==0){
		$("select#sel2, select#sel3").hide();
	}
	//sel2 show
	if(mode=='show'&&flag==1){
		if($("select#sel2").css("display")=='none'){
			$("select#sel2").slideToggle("slow");
		}else{
			$("select#sel2").hide();
			$("select#sel2").slideToggle("slow");
		}
	}
	//sel2 hide
	
}
//selectBoxDisplay

function getXmlData(xmlUrl,flag){
	$.ajax({
		url:xmlUrl,
		type:'POST',
		dataType:'xml',
		success:function(xml){
			//console.log(xml);
			var optionHTML="<option selected='selected' value='empty'>선택하세요</option>";
			//
			if(flag==1){
				if($(xml).find("category").find("item").length>0){
					$(xml).find("category").find("item").each(function(){
						var value=$(this).find("value").text();
						var title=$(this).find("title").text();
						optionHTML+="<option value='"+value+"'>"+title+"</option>";
					});
					$("select#sel2").append(optionHTML);
				}
			}
			if(flag==2){
				if($(xml).find("category").find("item").length>0){
					$(xml).find("category").find("item").each(function(){
						var value=$(this).find("value").text();
						var title=$(this).find("title").text();
						optionHTML+="<option value='"+value+"'>"+title+"</option>";
					});
					$("select#sel3").append(optionHTML);
				}
			}
			
		},error:function(){
			alert('XML error');
		}
	});
}
//getXmlData

function changeEventFun(id){
	if(id=='sel1'){
		switch ($("select#"+id).val()) {
		//선택한 select의 아이디 값
		//alert($("select#"+selectId).val());
		case "empty":
			$("select#sel2 option").remove();
			//$("select#sel2, select#sel3").hide();
			selectBoxDisplay('hideAll',0);
		break;
		//sel1의 value 1 => se12에 적용됨
		case "1":
			$("select#sel2 option").remove();
			//선택한 select의 option value값
			//getXmlData('/web/JQuery/source/cart1.xml',0);
			getXmlData('/web/JQuery/source/cart1.xml',1);
			selectBoxDisplay('show', 1);
		break;
		//sel1의 value 2 => se12에 적용됨
		case "2":
			$("select#sel2 option").remove();
			//선택한 select의 option value값
			//getXmlData('/web/JQuery/source/cart1.xml',0);
			getXmlData('/web/JQuery/source/cart2.xml',1);
			selectBoxDisplay('show', 1);
			break;

		default:
			break;
		}
		//switch
	}
	//if id==sel1
	if(id=='sel2'){
		switch ($("select#"+id).val()) {
		case "empty":
			$("select#sel3").hide();
		break;
		case "100":
			$("select#sel3 option").remove();
			$("select#sel3").show();
			getXmlData('/web/JQuery/source/cart3.xml',2);
			selectBoxDisplay('show', 2);
			break;
		default:
			break;
		}
	}
	
}
//changeEventFun

$(function(){
	selectBoxDisplay('hideAll',0);
	$("select").bind("change",function(){
		var selectId=$(this).attr("id");

		changeEventFun(selectId);
		
	});	
	//select bind
	
});
//main function