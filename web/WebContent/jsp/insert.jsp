<%@page import="java.io.File"%>
<%@page import="sist.com.model.BbsBean"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileUpload"%>
<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
  request.setCharacterEncoding("EUC-KR");
%>
 
<jsp:useBean id="bean" class="sist.com.model.BbsBean" scope="page"/>

<jsp:setProperty property="*" name="bean"/>
</head>
<body>
<%
   request.setCharacterEncoding("EUC-KR");
				
    String path="D:\\phj\\MYbatisBasic\\web\\WebContent\\upload\\";
    if(FileUpload.isMultipartContent(request)){
    	DiskFileUpload diskFileUpload=new DiskFileUpload();
    	diskFileUpload.setRepositoryPath(path);
    	diskFileUpload.setSizeMax(1024*1024*5);
    	List<FileItem>list=diskFileUpload.parseRequest(request);
    	BbsBean bbs=new BbsBean();
    	bbs.setNo(Integer.parseInt(request.getParameter("no")));
    	String job=request.getParameter("job");
    	
    	String fixFile="";
    	for(FileItem fileItem:list){
    		String name=fileItem.getFieldName();    	
    		if(name.equals("title")){
    			bbs.setTitle(fileItem.getString("EUC-KR"));
    		}
    		if(name.equals("writer")){
    			bbs.setWriter(fileItem.getString("EUC-KR"));
    		}
    		if(name.equals("password")){
    			bbs.setPassword(fileItem.getString("EUC-KR"));
    		}
    		if(name.equals("contents")){
    			bbs.setContents(fileItem.getString("EUC-KR"));
    		}
    		if(name.equalsIgnoreCase("ID")){
    			bbs.setId(fileItem.getString("EUC-KR"));
    		}
    		String fileName="";
    		
    		if(!fileItem.isFormField()){//input file
    			if(fileItem.getName().length()==0)continue;
    			fileName=(System.currentTimeMillis()+fileItem.getName());
    		    fixFile+=fileName+"#";
           		File file=new File(path+fileName);    		     
    		  try{
    		    fileItem.write(file);    		   
    		    bbs.setFilename(fixFile);
    		    
    		  }catch(Exception e){
    			  e.printStackTrace();
    		  }
    		}
    	}//for
    	
    	bbs.setFilename(bbs.getFilename()==null?"noimage.jpg":bbs.getFilename());
    	
    	if(job.equals("new")){
    		AppleDao.insertBBS(bbs);
    		response.sendRedirect("list.jsp");
    	}else if(job.equals("modify")){
    		AppleDao.updateBBS(bbs);
    		response.sendRedirect("info.jsp?no="+bbs.getNo()+"&page=1");
    	}
	    //out.println(bbs);
	    //out.println(job);
    }    
    
%>

</body>
</html>






