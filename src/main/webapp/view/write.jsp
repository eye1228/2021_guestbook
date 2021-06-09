<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function list_go(f){
		f.action="list.jsp";
		f.submit();
	}
	
	function save_go(f){
		
		
	}
</script>
<style type="text/css">
	a{text-decoration: none;}
	table{width: 600px; border-collapse: collapse;; text-align: center;}
	table, th, td{border: 1px solid black; padding: 5px; margin: auto;}
	div{ width: 600px; margin: 100px auto; text-align: center;}
    
	th{
   		background-color: #99CCFF;
    }
</style>
</head>
<body>
	<div>
		<h2>방명록:작성화면</h2>
		<hr>
		<p>[<a href="list.jsp">게시물목록으로</a>]</p>
		<br>
		<form method="post" action="write_ok.jsp">
			<table>
				<tbody>
					<tr><th>작성자</th><td><input type="text" name="name" required></td></tr>
					<tr><th>제목</th><td><input type="text" name="title" required></td></tr>
					<tr><th>email</th><td><input type="text" name="email" required></td></tr>
					<tr><th>비밀번호</th><td><input type="password" name="pw" required></td></tr>
					<tr>
						<td colspan="2" ><textarea name="msg"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type = "submit" value = "저장">
							<input type = "reset" value = "취소">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>