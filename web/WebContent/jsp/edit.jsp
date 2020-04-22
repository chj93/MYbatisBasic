<%@page import="sist.com.dao.AppleDao"%>
<%@page import="sist.com.model.BbsBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<script>
   function sendData(){
	   var obj=document.edit;
	   if((!obj.title.value)||(!obj.writer.value)||
			   (!obj.password.value)){
		   alert('입력하지 않은 정보가 있습니다.');
		   //clear(obj);
		   obj.writer.focus();
		   return false;
	   }
	   obj.submit();
   }
   function clear(obj){
	   obj.title.value='';
	   obj.writer.value='';
	   obj.password.value='';	   
   }
</script>
</head>
<body>
	<!-- 로그인 하지않았을 경우 접근 못하게. -->
	<%
	String id=(String)session.getAttribute("id");
	String ps=(String)session.getAttribute("pw");
	String mode=request.getParameter("mode");
	
	//mode=reply&ref=0&lev=0&step=0&pnum=91
	int ref=0, lev=0,step=0,pnum=0;
	if(mode!=null && mode.equals("reply")){
		ref=Integer.parseInt(request.getParameter("ref"));
		lev=Integer.parseInt(request.getParameter("lev"));
		step=Integer.parseInt(request.getParameter("step"));
		pnum=Integer.parseInt(request.getParameter("pnum"));
	}
	
	int no=0;
	no=request.getParameter("no")!=null?Integer.parseInt(request.getParameter("no")):0;
	//0이 아니면 수정모드.
	BbsBean bean=no!=0?(BbsBean)AppleDao.bbsInfo(no):null;
	//AppleDao.bbsInfo(no)의 형식이 Object 이므로  BbsBean로 형변환
	String pageDate=request.getParameter("page");
	
	try{
		id.concat("님");
		
	}catch(Exception e){
		response.sendRedirect("adminLogin.jsp");
	}
	
	String idValue=(String)request.getSession().getAttribute("id");
	
	%>
	
	<div id="wrapper">
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span>
						<span>13:30:22</span>
						<span><em><%=idValue %>님 </em> 좋은 하루 되세요</span>
						<a href="" class="btnLogout"><img src="../img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap">
				
			</div>
		</div>	
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 등록</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"><a href="javascript:sendData()"><%=no>0?"수정":"저장" %></a></span>
							<span class="button"><a href="list.jsp">목록</a></span>
							<span class="button"><a href="#">삭제</a></span>
						</span>
					</div>
				
					<form action="insert.jsp?no=<%=no %>&job=<%=mode=mode==null?"new":mode %>" name="edit" method="post" enctype="multipart/form-data" >
					<table class="bbsWrite">
						<colgroup>
							<col width="90" />
							<col />
						</colgroup>

						<tbody>
						<tr>
							<th scope="row">작성자</th>
							<td><input type="text" name="writer" class="inputText" size="50" value="<%=bean!=null?bean.getWriter():"" %>"/></td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td>
								<input type="text" name="title" class="inputText" size="50" value="<%=bean!=null?bean.getTitle():"" %>"/>
								<!-- <input type="text" name="no" value=""/> -->
							</td>
						</tr>
						<tr>
							<th scope="row">비밀</th>
							<td>
								<input type="hidden" name="id" value="<%=id %>" />
								<input type="password" name="password" class="inputText" size="50" value="<%=bean!=null?bean.getPassword():"" %>"/>
								<%
								if(mode!=null && mode.equals("reply")){
								%>
									<input type="hidden" name="ref" value="<%=ref %>"/>
									<input type="hidden" name="step" value="<%=step %>"/>
									<input type="hidden" name="lev" value="<%=lev %>"/>
									<input type="hidden" name="pnum" value="<%=pnum %>"/>
								<%
								}
								%>
							</td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td class="editer">
								<textarea name="contents"><%=bean!=null?bean.getContents():"" %></textarea>
							</td>
						</tr>
						<%
						String fileNames=((bean!=null)?bean.getFilename():null);
						String [] str=new String [3];
						str=((fileNames!=null)?fileNames.split("#"):null);
						%>
						<tr>
							<th scope="row">이미지첨부1</th>
							<td>
							<input type="file" name="file" class="inputText" size="50"/>
								 <%=bean!=null && str.length==1?"<img src=\"/web/upload/"+str[0].trim()+"\" width=\"70\" height=\"70\"></img>":"" %>
								<%-- <img src="<%=bean!=null && str[0]!=null?"/web/upload/"+str[0]:""%>"  width="70" height="70"></img> --%>
							</td>
						</tr>
						
						<tr>
							<th scope="row">이미지첨부2</th>
							<td>
							<input type="file" name="file" class="inputText" size="50" />
								<%=bean!=null && str.length==2?"<img src=\"/web/upload/"+str[1].trim()+"\" width=\"70\" height=\"70\"></img>":"" %>
							</td>
						</tr>
						<tr>
							<th scope="row">이미지첨부3</th>
							<td>
							<input type="file" name="file" class="inputText" size="50"/>
								<%=bean!=null && str.length==3?"<img src=\"/web/upload/"+str[2].trim()+"\" width=\"70\" height=\"70\"></img>":"" %>
							</td>
						</tr>				
						</tbody>
					</table>
					
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>