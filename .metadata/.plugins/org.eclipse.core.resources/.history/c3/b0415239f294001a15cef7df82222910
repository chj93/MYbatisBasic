<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
[
	<c:forEach var="i" items="${member}" varStatus="cnt">
	{
		"no":${cnt.count},
		"id":"${i.id}",
		"name":"${i.name}",
		"password":"${i.password}",
		"gender":"${i.gender}",
		"birth":"${i.birth}",
		"address":"${i.address}",
		"email":"${i.email}",
		"tel":"${i.tel}",
		"cp":"${i.cp}",
		"regdate":"${i.regdate}"
		<c:choose>
			<c:when test="${function:length(member) eq cnt.count }">
			}
			</c:when>
			<c:otherwise>
			},
			</c:otherwise>           
		</c:choose>  
	</c:forEach>
]



