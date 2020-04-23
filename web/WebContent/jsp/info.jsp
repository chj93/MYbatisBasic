
<%@page import="sist.com.dao.AppleDao"%>
<%@page import="sist.com.model.BbsBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pageData = request.getParameter("page");
	BbsBean bean=(BbsBean)AppleDao.bbsInfo(no);
	String id=(String)request.getSession().getAttribute("id");
%>
<script>
   function changeImge(obj){
	   document.getElementById("ig").src=obj.src;
   }	   
   function deleteFun(obj){
	   console.log(obj);
	   console.log(obj.reply);
	   if(obj.reply!=0){
		   alert("댓글이 있으므로 삭제 할 수 없습니다.");
		   return false;
	   }else{
		   
	   }
   }
	  
</script>
</head>
<body>   
	
	<div id="wrapper">
		<div id="header">
				<div class="topInfoWrap">
					<div class="topInfoArea clfix">
						<div class="loginWrap">
							<span class="fir">2012.05.17</span>
							<span>13:30:22</span>
							<span><em><%=id %>님</em> 좋은 하루 되세요</span>
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
					<h1 class="title">게시판 상세보기</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"> <a href="password.jsp?no=<%=no%>&job=modify&page=<%=request.getParameter("page") %>">수정</a></span>
							<span class="button">
<%-- 방법1					<%
								if(bean.getReply()==0){
								%>
								
									<a href="password.jsp?no=<%=no%>&job=del&page=<%=request.getParameter("page") %>">삭제</a>
								<%} %> --%>

								<%-- <a href="password.jsp?no=<%=no%>&job=del&page=<%=request.getParameter("page") %>">삭제</a> --%>
								<%
								if(bean.getReply()==0){
								%>
								<%-- <a href="password.jsp?no=<%=no%>&job=del&page=<%=request.getParameter("page")%>&pnum=<%=request.getParameter("pnum")%>">삭제</a> --%>
								<a href="password.jsp?no=<%=no%>&job=del&page=<%=request.getParameter("page")%>&pnum=<%=bean.getPnum()%>">삭제</a>
								<%
								}else{
								%>
								<a href="javascript:deleteFun({no:<%=no%>,job:'del',page:'<%=request.getParameter("page")%>',reply:<%=bean.getReply()%>,pnum:<%=bean.getPnum()%>})">삭제</a>
								<%
								}
								%>
							</span>
							<span class="button"><a href="edit.jsp?mode=reply&ref=<%=bean.getRef()%>&lev=<%=bean.getLev()%>&step=<%=bean.getStep()%>&pnum=<%=bean.getNo()%>">답글</a></span>
							<!-- 현재화면이 부모의 화면이므로 no의 값을 보내면  pNum의 값 -->
							<span class="button"><a href="list.jsp">목록</a></span>
						</span>
					</div>
					<table class="bbsList">
						<colgroup>
							<col width="400" />
                            <col width="100" />
                            <col width="" />
						</colgroup>
						<tr>
							<th scope="col" class="fir">이미지</th>
                             <th scope="col">글번호</th>
                             <td><%=bean.getNo() %></td>
                        </tr>
                        <tr>
                        <%
                            String []res=bean.getFilename().split("#");
                        %> 
                          <td class="fir" rowspan="7"><img src="/web/upload/<%=res[0] %>" width="350" height="330" onmouseover="changeImge(this)" id="ig"/></td>
                          <th scope="col">작성자</th>	
                          <td><%=bean.getWriter() %></td>
                        </tr>
                        <tr>
                          <th scope="col">제목</th>
                          <td><%=bean.getTitle() %></td>
                        </tr>
                        <tr>
                          <th scope="col">내용</th>
                          <td height="200"><%=bean.getContents() %></td>
                        </tr>
                        <tr>
                          <th scope="col">등록일</th>
                          <td><%=bean.getRegdate() %></td>
                        </tr>
                        <tr>
                          <th scope="col">조회수</th>
                          <td><%=bean.getHit() %></td>
                        </tr>                   
					</table>
					<table>					  
					  <tr>
					  <td>
					    <%
					       for(int i=0;i<res.length;i++){
					    %>
					    <img src="/web/upload/<%=res[i] %>" width="50" height="50"  onmouseover="changeImge(this)"/>
					    <%
					       }
					    %>
					    </td>
					  </tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>






