<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.tool.Chinese"%>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
}
</script>
<html>
<%
String name=Chinese.chinese(request.getParameter("name"));
String address=Chinese.chinese(request.getParameter("address"));
session.setAttribute("linkName",name);
session.setAttribute("linkAddress",address);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ�ĺ�̨</title>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="755" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
 
  <tr  valign="bottom">
    <td height="108" colspan="2"  background="image/banner1.jpg"><div align="center">
 <jsp:include page="../upTwo.jsp"/>
    </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" height="36"  bgcolor="#FFFFFF">
    <div align="center">	
	<%if(request.getAttribute("result")==null){%>
	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center"><font color="#990000"><b>�����վͼƬ</b></font></div></td>
      </tr>
    </table>
<br><br>

	  <form action="linkDealPicture.jsp" method="post" enctype="multipart/form-data"  name="form" onSubmit="return checkEmpty(form)" >
        <table width="90%" height="60"  border="1" cellpadding="0" cellspacing="0">
          <tr>
            <td width="25%" height="30"><div align="center">��վ����</div></td>
            <td width="75%">&nbsp;&nbsp;&nbsp;&nbsp;<%=name%></td>
          </tr>
          <tr>
            <td height="30"><div align="center">��վ��ַ</div></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=address%></td>
          </tr>
		    <tr>
            <td height="30"><div align="center">��վ��ʾͼƬ</div></td>
            <td>&nbsp;&nbsp;&nbsp;
              <input name="file" type="file" size="40"></td>
          </tr>
		    <tr>
            <td height="30" colspan="2"><div align="center" class="style1">ע�⣺ֻ���ϴ���*.gif���롰*.jpg����ͼƬ,�ļ����ܴ���100KB</div></td>
          </tr>

        </table>
        <p>
          <input type="submit" name="Submit2" value="�ύ">&nbsp;
          <input type="reset" name="reset" value="���">&nbsp;
          <input type="button" name="back" value="����" onClick="javasrcipt:history.go(-1)">
        </p>
	  </form>
	  <%}else{%>
	  
	  	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center"><font color="#990000"><b><%=request.getAttribute("result")%></b></font></div></td>
      </tr>
    </table>
<br><br>

	  	<meta http-equiv="refresh" content="3;URL=linkAction.do?action=1">
	  <%}%>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
    </div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="60" colspan="2"><p align="center"><jsp:include page="../downNews.jsp"/>

</p>    </td>
  </tr>
</table>
</body>
</html>
