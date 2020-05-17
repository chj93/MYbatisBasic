package sist.com.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;

public class PagingProcess {
	public void makeProcess(HttpServletRequest request) {
	    HashMap<String,Object>map=new HashMap<String,Object>();
	    String query=request.getParameter("query");
	    String data=request.getParameter("data");
	    List<MemberBean>list=null ;
	    
	    
		int pageScale=5; //[1]당 들어갈 데이터 갯수
		int totalRow=0;	 //데이터 갯수
		int totalPage=1; //[x] 갯수
		int currentPage=1; //[1][2]]
	    
        map.put("query", query);
        map.put("data", data);

	    totalRow=MemberDao.getTotalMember(map);
	    totalPage=(totalPage = totalRow%pageScale==0?(totalRow/pageScale):(totalRow/pageScale)+1)==0?1:totalPage;
	    
	    //out.println(totalRow);
	    
	    try{
	    	currentPage=Integer.parseInt(request.getParameter("page"));
	    }catch(Exception e){
	    	//e.printStackTrace();
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
	    
		list=MemberDao.selectMember(map);
		
		request.setAttribute("member", list);
		request.setAttribute("pageBean", new PageBean(currentPage, totalPage, currentBlock, startPage, endPage));
	}
}
