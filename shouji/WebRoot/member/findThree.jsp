<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="com.domain.MemberForm"%>
<%@page import="com.tool.Chinese"%>
<jsp:useBean id="dao" scope="page" class="com.dao.MemberDao"/>
<%
String name=Chinese.chinese(request.getParameter("name")).trim();
String result=Chinese.chinese(request.getParameter("result")).trim();
MemberForm form=dao.selectFind(name,result);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�һ����벽����</title>
</head>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
if(document.form.password.value!=document.form.passwordOne.value){
window.alert("��������������벻һ�£�����������");
return false;
}
}
</script>
<body>
<p>&nbsp;</p>
<div align="center">
  <%if(form==null||form.equals("")){%>
 <p><strong>�𰸲���ȷ,���������룡����</strong></p>
 <meta http-equiv="refresh" content="3;URL=findTwo.jsp?name=<%=name%>">
  <%}else{%>
  <p><strong>����������</strong></p>
  <form name="form" method="post" action="findFour.jsp?id=<%=form.getId()%>" onSubmit="return checkEmpty(form)">
    <table width="298"  border="1" cellspacing="0" cellpadding="0" bordercolor="#FFFFFF" bordercolordark="#819BBC" bordercolorlight="#FFFFFF">
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">�������µ�����</div></td>
        <td width="187"><div align="center">
          <input type="password" name="password">
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">ȷ������</div></td>
        <td width="187"><div align="center">
                 <input type="password" name="passwordOne">
        </div></td>
      </tr>
    </table>
    <br><br><br>
    <input type="submit" name="Submit2" value="�ύ">&nbsp;&nbsp;
    <input type="reset" name="Submit3" value="����">
    &nbsp;&nbsp;
    <a href="../index.jsp">����</a>
  </form>
<%}%>

</div>
</body>
</html>
