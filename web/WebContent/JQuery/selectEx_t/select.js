function flagShow(selector){
	if($(selector).css("display")=='none'){
		$(selector).slideToggle("slow");
	}else{
		$(selector).hide();
		$(selector).slideToggle("slow");
	}
	
}

function selectBoxDisplay(mode,flag){
	if(mode=='hide' && flag==0){
	$("select#sel2,select#sel3").hide();
	}
	if(mode=='show'&& flag==1){
		flagShow("select#sel2");
	}
	if(mode=='show'&& flag==2){
		flagShow("select#sel3");
	}
	
}
function successFlag(flag,xml){
	var selector=flag==1?"select#sel2":"select#sel3";
	if($(xml).find("category").find("item").length>0){
		$(selector).append("<option value='empty' selected='selected'>선택하세요</option>");
		$(xml).find("category").find("item").each(function(){
			 var value=$(this).find("value").text();
			 var title=$(this).find("title").text();
			 $(selector).append("<option value='"+value+"'>"+title+"</option>");
		});
	}
}

function getXmlData(xmlUrl,flag){
	$.ajax({
		url:xmlUrl,
		type:'post',
		dataType:'xml',
		success:function(xml){
/*			if(flag==1){
				successFlag(1);
			}
			if(flag==2){
				successFlag(2);
			}*/
			successFlag(flag,xml);
		},
		error:function(){
			alert('error');
		}
	});
}
function changeEventFun(id){
	  if(id=='sel1'){
		  switch ($("select#"+id).val()) {
		case "empty":
			$("select#sel2 option").remove();
			$("select#sel2,select#sel3").hide();
			break;
		case "1":
		    $("select#sel2 option").remove();
		    getXmlData("/web/JQuery/selectEx_t/cart1.xml",1);
		    selectBoxDisplay('show',1);
		    break; 
		case "2":
			$("select#sel2 option").remove();
			getXmlData("/web/JQuery/selectEx_t/cart2.xml",1);
			selectBoxDisplay('show',1);
			break; 
		default:
			break;
		}
	 }//if
	  else if(id=='sel2'){
		  //alert($("select#"+id).val());
		  switch ($("select#"+id).val()) {
		case "empty":
			$("select#sel3 option").remove();
			$("select#sel3").hide();
			break;
		case "111":
			$("select#sel3 option").remove();
			getXmlData("/web/JQuery/selectEx_t/cart3.xml",2);
			selectBoxDisplay('show',2);
			break;
		case "112":
			$("select#sel3 option").remove();
			getXmlData("/web/JQuery/selectEx_t/cart4.xml",2);
			selectBoxDisplay('show',2);
			break;

		default:
			break;
		}
	  }
} 
$(function(){
	selectBoxDisplay('hide',0);	
	$("select").change(function(){		
		var id=$(this).attr("id");
		changeEventFun(id);
		
		//alert($("select#"+id).val());
		//getXmlData('/web/JQuery/source/cart1.xml');
		
		
	});//bind	
	
});//function


