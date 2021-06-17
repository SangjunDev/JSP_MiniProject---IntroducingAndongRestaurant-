<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
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
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameterValues("mail2")[0];
	String mail = mail1 + "@" + mail2;
	String phone = request.getParameter("phone");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address3 = request.getParameter("zipcode");
	String address = address3 + "/" + address1 + "/" + address2;

%>

<sql:setDataSource var="dataSource"
	url= "jdbc:oracle:thin:@127.0.0.1:1521:xe"
	driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" />

<sql:update dataSource="${dataSource}" var="resultSet">
   UPDATE PEOPLE SET PASSWORD=?, NAME=?, GENDER=?, BIRTH=?, MAIL=?, PHONE=?, ADDRESS=? WHERE ID=?
	<sql:param value="<%=password%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=gender%>" />
	<sql:param value="<%=birth%>" />
	<sql:param value="<%=mail%>" />
	<sql:param value="<%=phone%>" />
	<sql:param value="<%=address%>" />
	<sql:param value="<%=sessionId%>" />
</sql:update>


<c:redirect url="../index.jsp" />


