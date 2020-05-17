<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions"  uri="http://java.sun.com/jsp/jstl/functions"%>   
   [
     <c:forEach var="i" items="${ajaxList }" varStatus="cnt">
       {
          "no":${i.no},
          "i":"${i.id}",
          "contents":"${i.contents}",
          "regdate":"${i.regdate}"
        <c:choose>
          <c:when test="${functions:length(ajaxList)eq cnt.count }">
          }
          </c:when>
          <c:otherwise>
          },
          </c:otherwise> 
        </c:choose>  
            
     </c:forEach>
   
   ]
    
   













