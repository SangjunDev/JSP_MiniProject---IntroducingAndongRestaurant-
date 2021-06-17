<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>                   
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<table width="300" border="1">
		<tr>
			<th>번호</th>
			<th>가게이름</th>
			<th>주소</th>
			<th>핸드폰번호</th>
			<th>주메뉴</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;

			try {
				String sql = "select * from downtown where num between 12 and 22";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					String num = rs.getString("num");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String phone = rs.getString("phone");
					String food = rs.getString("food");
					%>
		<tr>
			<td><%=num%></td>
			<td><%=name%></td>
			<td><%=address%></td>
			<td><%=phone%></td>
			<td><%=food%></td>
		</tr>
		<%
				}//end while
			} catch (SQLException ex) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} finally {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}//end try
		%>
	</table>
</body>
</html>
