<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="com.domain.GoodsForm"%>
<jsp:useBean id="goods" scope="page" class="com.dao.GoodsDao"/>
<%GoodsForm form=goods.selectOneGoods(Integer.valueOf(request.getParameter("id")));%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
<style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-weight: bold;
	
}
-->
</style>
</head>

<body>
<table width="755" height="150%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="98"><div align="center">
    <jsp:include page="topOne.jsp"/></div>    </td>
  </tr>
  <tr>
    <td height="43" align="center" valign="middle" background="image/daohang.jpg"><jsp:include page="topTwo.jsp"/></td>

  </tr>
  <tr>
    <td height="847"><table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="25%" height="638" rowspan="2" valign="top" background="image/zuocedaohangbeijing.jpg">

		<jsp:include page="left.jsp"/>


		</td>
        <td width="75%" height="41" align="center" valign="middle" background="image/link.jpg"  bgcolor="#FFFFFF"><span class="style1">��<%=request.getParameter("account")%>��</span></td>

      </tr>
      <tr>
        <td  height="613" valign="top" bgcolor="#FFFFFF">
		<br>
		<br>			<br>
		<table width="96%" height="120"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#EFEFEF" >
                <tr>
                  <td width="36%" rowspan="4" height="120"><div align="center">
                      <input name="pricture" type="image" src="<%=form.getPicture()%>" width="110" height="100">
                  </div></td>
                  <td width="64%" height="30"><div align="center"><%=form.getName()%></div></td>
                </tr>
                <tr>
                  <td height="30"><div align="center"><font color="#F14D83">���ۣ�<%=form.getNowPrice()%>Ԫ</font></div></td>
                </tr>
                <tr>
                  <td height="30"><div align="center"><%=form.getIntroduce()%></div></td>
                </tr>
                <tr>
                  <td height="30" class="linkBlack"><div align="center">
                      <%if(session.getAttribute("form")!=null||session.getAttribute("id")!=null){%>
                      <a href="#" onClick="window.open('goodsAction.do?action=16&id=<%=form.getId()%>','','width=500,height=200');">�鿴��ϸ����</a></div>
                      <%}else{%>
                      <div align="center">��¼����ܹ���</div></td>
                  <%}%>
                </tr>
          </table>		</td>
      </tr>
    </table></td>
  </tr>
  <tr  bgcolor="#FFFFFF">
    <td height="100"><p align="center"><jsp:include page="downNews.jsp"/></p></td>
  </tr>
</table>
</body>
</html>
