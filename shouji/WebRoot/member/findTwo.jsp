<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="com.domain.MemberForm"%>
<%@page import="com.tool.Chinese"%>
<jsp:useBean id="dao" scope="page" class="com.dao.MemberDao"/>

<%MemberForm form=dao.selectMemberForm(Chinese.chinese(request.getParameter("name")));%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�һ����벽���</title>
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

}
</script>
<body>
<p>&nbsp;</p>
<div align="center">
  <%if(form==null||form.equals("")){%>
 <p><strong>�����ڴ˻�Ա����,���������룡����</strong></p>
 <meta http-equiv="refresh" content="3;URL=findOne.jsp">
  <%}else{%>
  <p><strong>�����</strong></p>
  <form name="form" method="post" action="findThree.jsp" onSubmit="return checkEmpty(form)">
    <table width="298"  border="1" cellspacing="0" cellpadding="0" bordercolor="#FFFFFF" bordercolordark="#819BBC" bordercolorlight="#FFFFFF">
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">����</div></td>
        <td width="187"><div align="center"><input type="hidden" name="name" value="<%=form.getName()%>">
          <input type="hidden" name="question" value="<%=form.getQuestion()%>"><%=form.getQuestion()%>
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">��</div></td>
        <td width="187"><div align="center">
          <input type="text" name="result">
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
