<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.BigTypeForm"%>
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
 function deleteType(date) {
  if(confirm("ȷ��Ҫɾ����")){
    window.location="bigTypeAction.do?action=3&id="+date;
	}
  }
 </script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ�ĺ�̨</title>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body>
<div id="Layer1" style="position:absolute; left:324px; top:164px; width:513px; height:23px; z-index:1" class="linkBlack">
  <div align="right"><a href="goodsAction.do?action=0">��Ʒ��ѯ</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="bigTypeAction.do?action=0">������ѯ</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="smallTypeAction.do?action=0">С����ѯ</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:history.go(-1)">����</a>&nbsp;&nbsp;</div>
</div>
<table width="755" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">

  <tr valign="bottom">
    <td height="108" colspan="2" background="image/banner1.jpg"><div align="center">
 <jsp:include page="../upTwo.jsp"/>
    </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" bgcolor="#FFFFFF" class="linkBlack">
    <div align="center"><br>
	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center"><font color="#990000"><b>��Ʒ������ѯ</b></font></div></td>
      </tr>
    </table>
<br><br>

	  <table width="90%"  border="1" cellspacing="0" cellpadding="0">
        <tr>
          <td width="14%" height="25"><div align="center">���ݱ��</div></td>
          <td width="28%"><div align="center">���������</div></td>
          <td width="28%"><div align="center">����ʱ��</div></td>
          <td width="30%"><div align="center">����</div></td>
        </tr>
		     <%for(int i=start;i<over;i++){
      BigTypeForm form=(BigTypeForm)list.get(i);
          %>
        <tr>
          <td height="30"><div align="center"><%=form.getId()%></div></td>
          <td><div align="center"><%=form.getBigName()%></div></td>
          <td><div align="center"><%=form.getCreaTime()%></div></td>
          <td><div align="center"><a href="bigTypeAction.do?action=4&id=<%=form.getId()%>" >�޸�</a>&nbsp;&nbsp;<a href="javascript:deleteType('<%=form.getId()%>')">ɾ��</a></div></td>
      <%}%>  </tr>
      </table>
	  <br>
	  <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr align="center">
          <td width="13%">��Ϊ<%=maxPage%>ҳ</td>
          <td width="16%">����<%=pageNumber%>����¼</td>
          <td width="14%">��ǰΪ��<%=number+1%>ҳ</td>
          <td width="19%"><%if((number+1)==1){%>
      ��һҳ
        <%}else{%>
        <a href="bigTypeAction.do?action=0&i=<%=number-1%>">��һҳ</a></td>
          <%}%>
          <td width="18%"><%if(maxPage<=(number+1)){%>
            ��һҳ
              <%}else{%>
              <a href="bigTypeAction.do?action=0&i=<%=number+1%>">��һҳ</a></td>
          <%}%>

          <td width="20%">
            <div align="right"><a href="bigTypeAction.do?action=1">��Ӵ����&nbsp;</a></div></td>

        </tr>
      </table>
	  <p><br>

    </p>
    </div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="60" colspan="2"><p align="center"><jsp:include page="../downNews.jsp"/>

</p>    </td>
  </tr>
</table>
</body>
</html>
