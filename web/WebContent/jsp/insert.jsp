<%@page import="java.util.HashMap"%>
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
    	
    	String job=request.getParameter("job");
		if(job.equals("modify"))    	
			//수정
    		bbs.setNo(Integer.parseInt(request.getParameter("no"))); 
    	else{
    	//new, reply
    		bbs.setNo(AppleDao.getSequence());	
    	}
    	String fixFile="";
    	for(FileItem fileItem:list){
    		String name=fileItem.getFieldName(); 
    		//답글달기 일경우 
    		if(job.equals("reply")){
    			if(name.equals("ref")){
    				bbs.setRef(Integer.parseInt(fileItem.getString("EUC-KR")));
    			}	
    			if(name.equals("step")){
    				bbs.setStep(Integer.parseInt(fileItem.getString("EUC-KR")));
    			}	
    			if(name.equals("lev")){
    				bbs.setLev(Integer.parseInt(fileItem.getString("EUC-KR")));
    			}	
    			if(name.equals("pnum")){
    				bbs.setPnum(Integer.parseInt(fileItem.getString("EUC-KR")));
    			}	
    		}
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
    	
    	if(bbs.getNo()>0&& bbs.getFilename()!=null&&job.equals("modify")){
    		BbsBean b=(BbsBean)AppleDao.bbsInfo(bbs.getNo());
    		String []res1=b.getFilename().split("#");//원본이미지
    		String []res2=bbs.getFilename().split("#");
    		for(int i=0;i<res2.length;i++){
    			res1[i]=res2[i];
    		}
    		String temp="";
    		for(String s:res1){
    			temp+=s.concat("#");
    		}
    		out.println(temp);
    		bbs.setFilename(temp);
    	}else{
    	bbs.setFilename(bbs.getFilename()==null?"noimg.jpg":bbs.getFilename());
    	}
    	//out.println(job+"job");
    	
    	if(job.equals("new")){
    		bbs.setRef(bbs.getNo());
    		bbs.setPnum(bbs.getNo()); 
    	}
    	else if(job.equals("reply")){
    		//updateReply
    		HashMap<String,Object>map=new HashMap<String,Object>();
    		map.put("num",bbs.getPnum());
    		map.put("job",job); //==reply
    		//updateStep
    		map.put("ref",bbs.getRef());
    		map.put("step",bbs.getStep());
    		
    		AppleDao.updateStep(map);
    		AppleDao.updateReply(map);
    		
    		bbs.setStep(bbs.getStep()+1);
    		bbs.setLev(bbs.getLev()+1);

    		//out.println(bbs);
    		//out.println(job);
    	}
    	
    	
    	
    	else if(job.equals("modify")){
    		AppleDao.updateBBS(bbs);
    		response.sendRedirect("info.jsp?no="+bbs.getNo()+"&page=1");
    	}
    	if(!job.equals("modify")){   		
			out.println(bbs);
			out.println(job+"job"); 
			AppleDao.insertBBS(bbs);
			response.sendRedirect("list.jsp");
       	}
    	
    	
   		//AppleDao.insertBBS(bbs);
   		//response.sendRedirect("list.jsp");
    	
	    //out.println(bbs);
	    //out.println(job);
    }    
    
%>

</body>
</html>






