<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>

<sql:setDataSource var="dataSource"
	url= "jdbc:oracle:thin:@127.0.0.1:1521:xe"
	driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM PEOPLE WHERE id=? and password=?  
   <sql:param value="<%=id%>"/>
	<sql:param value="<%=password%>"/>
</sql:query>

<c:forEach var="row" items="${resultSet.rows}">	
	<c:set var="sessionId" value="${row.id}" scope="session"  />
	<c:set var="sessionName" value="${row.name}" scope="session"  />
	<c:redirect url="../index.jsp?msg=2" />
</c:forEach>

<c:redirect url="login.jsp?error=1" />
