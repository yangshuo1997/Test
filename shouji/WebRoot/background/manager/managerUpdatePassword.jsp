<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.ManagerForm"%>
<jsp:useBean id="dao" scope="page" class="com.dao.ManagerDao"/>
<%
ManagerForm form=(ManagerForm)session.getAttribute("manager");
String account=form.getAccount();
String selectPassword=dao.selectPassword(form.getAccount());
%>


<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
if(document.form.selectPassword.value!=document.form.old.value){
window.alert("������ԭ�������벻��ȷ������������");
return false;
}
if(document.form.password.value!=document.form.passwordNext.value){
window.alert("��������������벻һ�£�����������");
return false;
}

return true;
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ�ĺ�̨</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>
<table width="755" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr  valign="bottom">
    <td colspan="2" height="108" background="image/banner1.jpg" >       <div align="center">
   <jsp:include page="../upTwo.jsp"/>
      </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" height="318" bgcolor="#FFFFFF">
    <div align="center">	
	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center"><font color="#990000"><b>�޸Ĺ���Ա����</b></font></div></td>
      </tr>
    </table>
<br><br>
	

	  <form name="form" method="post" action="managerAction.do?action=8&account=<%=account%>" onSubmit="return checkEmpty(form)">
        <table width="60%"  border="1" cellspacing="0" cellpadding="0">
          <tr><input name="selectPassword" type="hidden"  value="<%=selectPassword%>">
            <td width="29%" height="30"><div align="center">ԭ����</div></td>
            <td width="71%">&nbsp;<input name="old" type="password" size="30"></td>
          </tr>
          <tr>
            <td height="30"><div align="center">������</div></td>
            <td>&nbsp;<input name="password" type="password" size="30"></td>
          </tr>
          <tr>
            <td height="30"><div align="center">�ٴ�����������</div></td>
            <td>&nbsp;<input name="passwordNext" type="password" size="30"></td>
          </tr>
        </table>
        <p>
          <input type="submit" name="Submit2" value="�ύ">&nbsp;
          <input type="reset" name="reset" value="���">&nbsp;
          <input type="button" name="back" value="����" onClick="javasrcipt:history.go(-1)">
	      </p>
	  </form>
	  <p><br>
	  </p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p>&nbsp;        </p>
    </div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="60" colspan="2"><p align="center"><jsp:include page="../downNews.jsp"/>

</p>    </td>
  </tr>
</table>
</body>
</html>
