<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	String id = request.getParameter("id");
%>

<sql:setDataSource var="dataSource"
	url= "jdbc:oracle:thin:@127.0.0.1:1521:xe"
	driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM PEOPLE WHERE ID=?  
   <sql:param value="<%=id%>" />
</sql:query>
<c:set var="result" value="0" />
<c:forEach var="row" items="${resultSet.rows}">
	<c:set var="result" value="1" />
</c:forEach>

<html>
<head>

<title>중복체크</title>
</head>
<body>
	<br>
	<div >
		<h6 >
			<c:if test="${result == 0}">아이디를 사용할 수 있습니다 </c:if>
			<c:if test="${result == 1}"> 아이디를 사용할 수 없습니다	</c:if>
		</h6>
	</div>

	<div >
		<input type="button" onclick="window.close()" value="닫기 ">

	</div>
</body>
</html>>