<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="com.domain.OrderDetailForm"%>
<%@ page import="com.domain.OrderForm"%>
<%@ page import="com.domain.MemberForm"%>
<jsp:useBean id="order" scope="page" class="com.dao.OrderDao"/>
<jsp:useBean id="orderDetail" scope="page" class="com.dao.OrderDetailDao"/>
<jsp:useBean id="goodsDao" scope="page" class="com.dao.GoodsDao"/>
<jsp:useBean id="member" scope="page" class="com.dao.MemberDao"/>
<%String id=(String)session.getAttribute("id");%>
<%MemberForm memberForm=member.selectOneMember(Integer.valueOf(id));%>
<%List orderList=order.selectOrderHead(memberForm.getName());%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
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
    <td height="847" bgcolor="#FFFFFF" class="linkBlack"><table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0" >
      <tr>
        <td width="25%" height="638" rowspan="2" valign="top"  background="image/zuocedaohangbeijing.jpg">

		<jsp:include page="left.jsp"/>


		</td>
        <td width="75%" height="33" align="center" valign="middle" background="image/chakandingdan.jpg">&nbsp;</td>

      </tr>
      <tr>
        <td valign="top"  height="613">
		  <div align="center"><br>
		      <br>
              <%if(orderList.size()==0){%>
     û�ж�����Ϣ
     <%}else{%>
          </div>
		  <table width="99%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">

       <tr align="center">
            <td width="15%" height="21">���</td>

            <td width="15%">�绰</td>
            <td width="21%">��ַ</td>

            <td width="24%">����ʱ��</td>
            <td width="13%">�Ƿ����</td> <td width="12%">����</td>
          </tr>
      <%
      for(int orderNumber=0;orderNumber<orderList.size();orderNumber++){
        OrderForm orderForm=(OrderForm)orderList.get(orderNumber);
        %>
          <tr align="center">
            <td height="24"><%=orderForm.getNumber()%></td>

            <td><%=orderForm.getTel()%></td>
            <td><%=orderForm.getAddress()%></td>

            <td><%=orderForm.getCreaTime()%></td>
            <td><%if(orderForm.getSign().equals("0")){%>
            ��<%}else{%>��<%}%>
            </td>
             <td><a href="cart_detail.jsp?number=<%=orderForm.getNumber()%>">�鿴��ϸ</a></td>
          </tr>

          <%}%>
        </table>
      <div align="center">

		   <br>
	      <%if(request.getParameter("number")!=null){%>

	      <br>
	      ������ϸ��ѯ
	      <br>
<br>

      <table width="89%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">

        <tr align="center">
          <td width="25%" height="21">���</td>
          <td width="24%">��Ʒ����</td>
          <td width="28%">��Ʒ�۸�</td>
          <td width="23%">��Ʒ����</td>
        </tr>  <%
        float sum=0;
            List orderDetailList=orderDetail.selectOrderDetailNumber(request.getParameter("number"));
        for(int orderDetailNumber=0;orderDetailNumber<orderDetailList.size();orderDetailNumber++){
         OrderDetailForm orderDetailForm=(OrderDetailForm)orderDetailList.get(orderDetailNumber);

         sum=sum+orderDetailForm.getPrice()*orderDetailForm.getNumber();
         %>
        <tr  align="center" >
          <td height="21"><%=orderDetailForm.getOrderNumber()%></td>
          <td><%=goodsDao.selectOneGoods(orderDetailForm.getGoodsId()).getName()%></td>
          <td><%=orderDetailForm.getPrice()%>Ԫ</td>
          <td><%=orderDetailForm.getNumber()%></td>
        </tr>
        <%}%>
      </table>

	   <table width="89%"  border="0" cellspacing="0" cellpadding="0">
         <tr>
           <td height="24"><div align="right">�ܽ�<%=sum%>Ԫ</div></td>
         </tr>
       </table> <%}%>
	   </div>
      <%}%>		</td>
      </tr>
    </table></td>
  </tr>
<tr bgcolor="#FFFFFF">
    <td height="100" ><p align="center"><jsp:include page="downNews.jsp"/>

   </td>
  </tr>
</table>
</body>
</html>
