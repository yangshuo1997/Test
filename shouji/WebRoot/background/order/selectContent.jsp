<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.OrderForm"%>
<%@page import="com.domain.OrderDetailForm"%>
<%@page import="com.domain.GoodsForm"%>
<jsp:useBean id="order" scope="page" class="com.dao.OrderDao"/>
<jsp:useBean id="goods" scope="page" class="com.dao.GoodsDao"/>
<jsp:useBean id="orderDetail" scope="page" class="com.dao.OrderDetailDao"/>
<%OrderForm orderForm=(OrderForm)request.getAttribute("orderForm");%>
<%List list=(List)request.getAttribute("orderDetailList");%>
<html>
<head>
<style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ�ĺ�̨</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>
<table width="755" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="bottom">
    <td height="108" colspan="2" background="image/banner1.jpg"> <div align="center"><jsp:include page="../upOne.jsp"/> </div>      <div align="center">
   <jsp:include page="../upTwo.jsp"/>
      </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" bgcolor="#FFFFFF">
    <div align="center">
	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center" class="style1">������Ϊ��<%=orderForm.getNumber()%>����ϸ��Ϣ</div></td>
      </tr>
    </table><br>
	
	<table width="76%"  border="1" cellspacing="0" cellpadding="0">
      <tr align="center" >
        <td width="26%" height="25">��Ա�˺�</td>
        <td width="22%"><%=orderForm.getName()%></td>
        <td width="26%">��Ա����</td>
        <td width="22%"><%=orderForm.getReallyName()%></td>
      </tr>
      <tr  align="center">
        <td height="25">�ͻ��绰</td>
        <td><%=orderForm.getTel()%></td>
        <td>�ͻ���ַ</td>
        <td><%=orderForm.getAddress()%></td>
      </tr>
      <tr  align="center">
        <td height="25">���ʽ</td>
        <td><%=orderForm.getSetMoney()%></td>
        <td>���ͷ�ʽ</td>
        <td><%=orderForm.getPost()%></td>
      </tr>
      <tr align="center">
        <td height="25" >��ע��Ϣ</td>
        <td><%=orderForm.getBz()%></td>
        <td>����ʱ��</td>
        <td><%=orderForm.getCreaTime()%></td>
      </tr>
    </table>
	<br>
	    <strong>��Ʒ��ϸ��Ϣ</strong>	  <br><br>
	    <table width="74%"  border="1" cellspacing="0" cellpadding="0">
          <tr>
            <td><div align="center">��Ʒ����</div></td>
            <td><div align="center">��Ʒ����</div></td>
            <td><div align="center">��Ʒ�۸�</div></td>
          </tr>
          <%
          float sum=0;
          for(int i=0;i<list.size();i++){
            OrderDetailForm form=(OrderDetailForm)list.get(i);
            sum=sum+form.getPrice()*form.getNumber();
          %>
          <tr>
            <td><div align="center"><%=goods.selectOneGoods(form.getGoodsId()).getName()%></div></td>
            <td><div align="center"><%=form.getNumber()%></div></td>
            <td><div align="center"><%=form.getPrice()%>Ԫ</div></td>
          </tr><%}%>
        </table><br><br>
    �ܽ��:<%=sum%><br>
    <table width="76%" height="19"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="72%">
              <div align="left">
                <%if(orderForm.getSign().equals("1")){%>
                �Ѿ�����
                <%}else{%>
                û�г���
                <%}%>
              </div></td><td width="28%" class="linkBlack"><div align="right"><a href="javascript:history.go(-1)">����</a></div></td>
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
