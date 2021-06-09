<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setTitle(request.getParameter("title"));
	vo.setEmail(request.getParameter("email"));
	vo.setPw(request.getParameter("pw"));
	vo.setMsg(request.getParameter("msg"));
	
	int result = DAO.getInstance().getInsert(vo);
	if(result>0){
		response.sendRedirect("list.jsp");
	}
%>