<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String year = request.getParameter("birthyy");
	String month = request.getParameterValues("birthmm")[0];
	String day = request.getParameter("birthdd");
	String birth = year + "/" + month + "/" + day;
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address3 = request.getParameter("zipcode");
	String address = address3 + "/" + address1 + "/" + address2;

	//Date currentDatetime = new Date(System.currentTimeMillis());
	//java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	//java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
	url= "jdbc:oracle:thin:@127.0.0.1:1521:xe"
	driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO PEOPLE VALUES (?, ?, ?, ?, ?, ?, ?, ?)
   <sql:param value="<%=name%>" />
	<sql:param value="<%=id%>" />
	<sql:param value="<%=password%>" />
	<sql:param value="<%=phone%>" />
	<sql:param value="<%=mail%>" />
	<sql:param value="<%=address%>" />
	<sql:param value="<%=gender%>" />
	<sql:param value="<%=birth%>" />
</sql:update>
<c:if test="${resultSet>=1}">
	<c:redirect url="login.jsp?msg=1" />
</c:if>
</html>