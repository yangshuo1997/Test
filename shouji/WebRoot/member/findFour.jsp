<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="com.domain.MemberForm"%>
<%@page import="com.tool.Chinese"%>
<jsp:useBean id="dao" scope="page" class="com.dao.MemberDao"/>
<%
String password=Chinese.chinese(request.getParameter("password").trim());
Integer id=Integer.valueOf(request.getParameter("id"));
boolean change=dao.updatePassword(password,id);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�һ����벽����</title>
</head>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">

<body>
<p>&nbsp;</p>
<div align="center">
  <p><strong>
    <%if(change){%>
    �����޸ĳɹ�������
  <%}else{%>
    �����޸�ʧ�ܣ�����
  <%}%>
  </strong></p>
<meta http-equiv="refresh" content="3;URL=../index.jsp">
</div>
</body>
</html>
