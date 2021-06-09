<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%
	request.setCharacterEncoding("utf-8");

   	String idx = request.getParameter("idx");
    VO vo = DAO.getInstance().getSelectOne(idx);

   pageContext.setAttribute("vo", vo);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{text-decoration: none;}
	table{width: 600px; border-collapse: collapse;; text-align: center;}
	table, th, td{border: 1px solid black; padding: 5px; margin: auto;}
	div{ width: 600px; margin: 100px auto; text-align: center;}
	
	.bg{background-color: #99ccff}
	input{ padding : 5px;  }
</style>
<script type="text/javascript">
	function update_ok(f){
		//비밀번호 체크
		if(f.pw.value == "${vo.pw}"){
			alert("수정");
			f.submit();
		}else{
			alert("비밀번호가 틀립니다.");
			f.pw.value="";
			f.pw.focus();
			return;
		}
	}
	function cancel(f){
		f.action="list.jsp";
	}
</script>
</head>
<body>
	<div>
		<h2>방명록 : 수정화면</h2>
		<hr>
		<p>[ <a href="list.jsp">목록으로</a> ]</p>
		<form method="post" action="update_ok.jsp">
			<table>
				<tbody>
					<tr><th class="bg">작성자</th> <td><input type="text" name="name" value="${vo.name }"></td></tr>
					<tr><th class="bg">제목</th> <td><input type="text" name="title" value="${vo.title }"></td></tr>
					<tr><th class="bg">email</th> <td><input type="text" name="email" value="${vo.email}"></td></tr>
					<tr><th class="bg">비밀번호</th> <td><input type="password" name = "pw"></td></tr>
					<tr>
					  	<td colspan="2">
					   		<textarea rows="10" cols="50" name="content">${vo.msg }</textarea>
					   </td>
					</tr>

				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="수정" onclick="update_ok(this.form)">
							<input type="reset"  value="취소" onclick="cancel(this.form)"> 
							<%-- DB 수정을 위해서 idx를 넘기자 --%>
							<input type="hidden" name="idx" value="${vo.idx }">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>