<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.MemberForm"%>
<%
List list=(List)request.getAttribute("list");
int number=Integer.parseInt((String)request.getAttribute("number"));
int maxPage=Integer.parseInt((String)request.getAttribute("maxPage"));
int pageNumber=Integer.parseInt((String)request.getAttribute("pageNumber"));
int start=number*6;//��ʼ����
int over=(number+1)*6;//��������
int count=pageNumber-over;//��ʣ��������¼
if(count<=0){
  over=pageNumber;
  }
%>
 <script Language="JavaScript">
 function deleteMember(date) {
  if(confirm("ȷ��Ҫɾ����")){
    window.location="memberAction.do?action=4&id="+date;
	}
  }
 </script>
 <style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
}
-->
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ�ĺ�̨</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>
<table width="755" height="100%" align="center" cellpadding="0" cellspacing="0">
  <tr valign="bottom">
    <td height="108" colspan="2"  background="image/banner1.jpg">      <div align="center">
   <jsp:include page="../upTwo.jsp"/>
      </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" bgcolor="#FFFFFF">    <div align="center">
<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center" class="style1">��Ա��Ϣ��ѯ</div></td>
      </tr>
    </table>
	<br>
	<br>
	    <table width="71%"  border="1" cellspacing="0" cellpadding="0">

	    <tr>
          <td width="14%" height="25"><div align="center">���</div></td>
          <td width="14%"><div align="center">��Ա�˺�</div></td>
          <td width="14%"><div align="center">��Ա����</div></td>
           <td width="14%"><div align="center">��Ա����</div></td>

    <td width="38%"><div align="center">����</div></td>
        </tr>
        <%for(int i=start;i<over;i++){
      MemberForm form=(MemberForm)list.get(i);
          %>
        <tr>
          <td height="30"><div align="center"><%=form.getId()%></div></td>
          <td><div align="center"><%=form.getName()%></div></td>
          <td><div align="center"><%=form.getReallyName()%></div></td>
                  <td><div align="center"><%=form.getAge()%>��</div></td>
        <td class="linkBlack"><div align="center">

		 <a href="memberAction.do?action=3&id=<%=form.getId()%>">��ϸ��Ϣ</a>&nbsp;&nbsp;&nbsp;&nbsp;

		 <a href="javascript:deleteMember('<%=form.getId()%>')">ɾ��</a>

		  </div></td>
        </tr>
        <%}%>
      </table><br>
	   <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr align="center">
    <td width="17%">��Ϊ<%=maxPage%>ҳ</td>
			<td width="22%">����<%=pageNumber%>����¼</td>
            <td width="26%">��ǰΪ��<%=number+1%>ҳ</td>
    <td width="19%" class="linkBlack"><%if((number+1)==1){%> ��һҳ<%}else{%><a href="memberAction.do?action=2&i=<%=number-1%>">��һҳ</a></td><%}%>
            <td width="16%" class="linkBlack"><%if(maxPage<=(number+1)){%>��һҳ<%}else{%><a href="memberAction.do?action=2&i=<%=number+1%>">��һҳ</a></td><%}%>



   </tr>
 </table>

    </div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="60" colspan="2"><p align="center"><jsp:include page="../downNews.jsp"/>

</p>    </td>
  </tr>
</table>
</body>
</html>
