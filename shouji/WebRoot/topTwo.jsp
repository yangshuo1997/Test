<%@ page contentType="text/html; charset=gb2312" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/css.css" rel="stylesheet" type="text/css">


<%if(session.getAttribute("id")==null||session.getAttribute("form")==null){%>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 10pt;
	font-weight: bold;
	color: #330066;
}
.STYLE2 {font-size: 10pt}
-->
</style>
<table width="97%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr align="center" >
        <td width="117" height="39" class="linkWhite"><a href="index.jsp" ><span class="STYLE2">��ҳ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="sell_resultTen.jsp"><span class="STYLE2">��������</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="goodsAction.do?action=14&mark=0"><span class="STYLE2">��Ʒ�ϼ�</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="goodsAction.do?action=15&mark=1" ><span class="STYLE2">�ؼ���Ʒ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="connection.jsp" ><span class="STYLE2">�鿴����</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="connection.jsp" ><span class="STYLE2">�鿴���ﳵ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="connection.jsp" ><span class="STYLE2">��Ա�޸�</span><br>
        </a></td>
        
      </tr>
</table>
<%}else{%>
<table width="97%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td width="117" height="39" class="linkWhite"><a href="index.jsp"><span class="STYLE1">��ҳ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="sell_resultTen.jsp"><span class="STYLE1">��������</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="goodsAction.do?action=14&mark=0"><span class="STYLE1">��Ʒ�ϼ�</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="goodsAction.do?action=15&mark=1"><span class="STYLE1">�ؼ���Ʒ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="cart_detail.jsp"><span class="STYLE1">�鿴����</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="cart_see.jsp"><span class="STYLE1">�鿴���ﳵ</span><br>
        </a></td>
        <td width="117" class="linkWhite"><a href="memberAction.do?action=5&id=<%=session.getAttribute("id")%>"><span class="STYLE1">��Ա�޸�</span><br>
        </a></td>
      
      </tr>
</table>
<%}%>
