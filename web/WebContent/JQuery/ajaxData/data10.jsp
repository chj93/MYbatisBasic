<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
[
	<c:forEach var="i" items="${member}" varStatus="cnt">
	{"id":"${i.id}", "name":"${i.name}","gender":"${i.gender}"
	<c:choose>
		<c:when test="${cnt.count eq function:length(member)}">
		}
		</c:when>
		<c:otherwise>
		},
		</c:otherwise>
	</c:choose>
<%-- 	
	},
	<c:out value="${cnt.count}"></c:out>
	<c:out value="${function:length(member)}"></c:out> 
--%>
	</c:forEach>
]