<%@page import="java.util.HashMap"%>
<%@page import="sist.com.model.BbsBean"%>
<%@page import="java.util.List"%>
<%@page import="sist.com.dao.AppleDao"%>
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
   function searchData(){
	   var obj=document.searchFrm;
	   if(obj.query.value=='empty'|| !obj.data.value){
		   alert('SearchData!');
		   obj.query.selectedIndex=0;
		   obj.data.value='';
		   return false;
	   }
	   obj.submit();
   }
   
   function idSelect(id,obj){
	   //alert(id+" "+obj.value);
	   document.searchFrm.data.value=obj.value=='ID'?id:'';
   }
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		List<BbsBean> list =null;
	
		String id=(String)request.getSession().getAttribute("id");
		if(id==null)response.sendRedirect("adminLogin.jsp");
	
	    String query=request.getParameter("query");
	    String data=request.getParameter("data");
 	    
	    HashMap<String,Object>map=new HashMap<String,Object>();
	    
		int pageScale=5; //[1]당 들어갈 데이터 갯수
		int totalRow=0;	 //데이터 갯수
		int totalPage=1; //[x] 갯수
		int currentPage=1; //[1][2]]
	    
        map.put("query", query);
        map.put("data", data);

	    totalRow=AppleDao.getTotalRow(map);
	    totalPage=(totalPage = totalRow%pageScale==0?(totalRow/pageScale):(totalRow/pageScale)+1)==0?1:totalPage;
	    
	    //out.println(totalRow);
	    
	    try{
	    	currentPage=Integer.parseInt(request.getParameter("page"));
	    }catch(Exception e){
	    	//currentPage=1;
	    }
	    //1page => 1~10 2page => 11~20
	    int start=1+(currentPage-1)*pageScale;			//첫페이지
	    int end=pageScale+(currentPage-1)*pageScale;	//끝페이지
	    int currentBlock=currentPage%pageScale==0?(currentPage/pageScale):(currentPage/pageScale)+1;
	    
	    int startPage=1+(currentBlock-1)*pageScale;
	    int endPage=(pageScale+(currentBlock-1)*pageScale);
	    endPage=(endPage)>=totalPage?totalPage:endPage;
	    
		map.put("start",start);
		map.put("end",end);

	    list=AppleDao.selectBbs(map);
	%>
	
	<div id="wrapper">
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span> <span>13:30:22</span> <span><em><%=id %>님</em>
							좋은 하루 되세요</span> <a href="" class="btnLogout"><img
							src="../img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap"></div>
		</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 리스트</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="javascript:searchData()">검색</a></span>
							<span class="button"><a href="edit.jsp">글쓰기</a></span>
							<span class="button"><a href="list.jsp">새로고침</a></span>
						</span>
					</div>
                   <form action="" method="post" name="searchFrm">
					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="30" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						<tbody>
							<tr>
								<th>검색</th>
								<td><select name="query" onchange="idSelect('<%=id%>',this)">
									<option selected="selected" value="empty">선택하세요</option>
									<option value="TITLE">제목</option>
									<option value="WRITER">작성자</option>
									<option value="CONTENTS">내용</option>
									<option value="ID">ID</option>
								    </select>
								 <input type="text" name="data" class="inputText" size="30" /></td>
							</tr>
						</tbody>
					</table>
					</form>

					<table class="bbsList">
						<colgroup>
							<col width="30" />
							<col width="200" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="fir">NO</th>
								<th scope="col">IMAGE</th>
								<th scope="col">TITLE</th>
								<th scope="col">WRITER</th>
								<th scope="col">HIT</th>
								<th scope="col">GRADE</th>
								<th scope="col">REGDATE</th>

							</tr>
						</thead>
	
						<tbody>
							<%
								for (BbsBean b : list) {
							%>
							<tr>
								<td class="fir"><%=b.getNo()%></td>
								<td>
									<a href="hit.jsp?no=<%=b.getNo()%>&page=<%=currentPage%>">
									<%
									    String []str=b.getFilename().split("#");
									    for(int i=0;i<str.length;i++){
									%>
									<img src="/web/upload/<%=str[i]%>" width="180" height="180" /></a>
									<%
									    }
									%>	
									
								</td>
								<td><%=b.getTitle()%></td>
								<td><%=b.getWriter()%></td>
								<td><%=b.getHit()%></td>
								<td>
									<%
										String img = "";
											switch (b.getGrade()) {
											case 1:
												img = "1.jpg";
												break;
											case 2:
												img = "2.jpg";
												break;
											case 3:
												img = "3.jpg";
												break;
											default:
												img = "4.jpg";
											}
									%>
									<img src="/web/reImage/<%=img %>" width="50" height="50"/>
								</td>
								<td><%=b.getRegdate()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>

					<div class="paging">
						<a href="list.jsp?page=1"><img src="../img/button/btn_first.gif" alt="처음페이지" /></a>
						<%
						//1보다 클경우 이전링크가 나와야 함
						if(currentBlock>1){
						%>
						<a href="list.jsp?page=<%=startPage-1 %>"><img src="../img/button/btn_prev.gif" alt="이전" /></a>
						<%}else{ %>
						<a href="#"><img src="../img/button/btn_prev.gif" alt="이전" /></a>
						<%} %>
						
						<%
						if(currentPage>1){
						%>
							<a href="list.jsp?page=<%=currentPage-1 %>">Before</a>
						<%} %>

						<span> 
						<%for (int i=startPage; i<=endPage;i++){ 
							if(i==currentPage){
						%>
								<a href="#"><strong>[<%=i %>]</strong></a>
							<% }else{%>
								<a href="list.jsp?page=<%=i %>">[<%=i %>]</a>
							<%} %>

						<%} %>
<%-- My
						<%
						for (int i=1; i<=totalPage;i++){
						%>
						<a href="/web/jsp/list.jsp?page=<%=i %>"><%=i %></a>
--%>
						</span> 
						
						<%if(currentPage<totalPage){ %>
						
						<a href="list.jsp?page=<%=currentPage+1 %>">Next</a>
						<%} %>
						
						
						<%if(totalPage>endPage){ %>
						<a href="list.jsp?page=<%=endPage+1%>"><img src="../img/button/btn_next.gif" alt="다음" /></a>
						<%}else{ %>						
						<a href="#"><img src="../img/button/btn_next.gif" alt="다음" /></a>						
						<%} %>
			
						<a href="list.jsp?page=<%=totalPage%>"><img src="../img/button/btn_last.gif" alt="마지막페이지" /></a>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>