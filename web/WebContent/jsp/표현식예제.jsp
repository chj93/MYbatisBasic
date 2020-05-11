<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
    ${function:contains('member','m')} <!--T: member에 m이 포함되는지  -->
    ${function:split('member','m')[1]}
    ${function:startsWith('member','c')}
    ${function:endsWith('member','s')}
    ${function:indexOf('member','r')}



