<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="com.domain.MemberForm"%>
<%java.util.Date date=new java.util.Date();%>
<jsp:useBean id="dao" scope="page" class="com.dao.MemberDao"/>
<%
String id=(String)session.getAttribute("id");
MemberForm form=dao.selectOneMember(Integer.valueOf(id));
%>
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
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
    <td height="847"><table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td width="25%" height="638" rowspan="2" valign="top" background="image/zuocedaohangbeijing.jpg">

		<jsp:include page="left.jsp"/>


		</td>
        <td width="75%" height="33" align="center" valign="middle" background="image/jiezhao.jpg">&nbsp;</td>

      </tr>
      <tr>
        <td valign="top"  height="613">		  <div align="center"><br>
                    <form name="form" method="post" action="cart_checkOutOrder.jsp"  onSubmit="return checkEmpty(form)">
		  <table width="68%"  border="1" cellspacing="0" cellpadding="0"  bordercolor="#FFFFFF" bordercolordark="#819BBC" bordercolorlight="#FFFFFF">
            <tr>
              <td height="30" colspan="2"> <div align="center" class="style1">ע�⣺������Ҫ�����Ƿ��ύ����������ɲ���Ҫ���鷳�� </div></td>
              </tr>
			   <tr>
              <td height="30"><div align="center">�������</div></td>
              <td>&nbsp;<input type="hidden" name="number" value="<%=date.getTime()%>"><%=date.getTime()%></td>
            </tr>
            <tr>
              <td width="24%" height="30"><div align="center">��Ա����</div></td>
              <td width="76%"><%=form.getName()%><input type="hidden" name="name" value="<%=form.getName()%>"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">��ʵ����</div></td>
              <td><%=form.getReallyName()%><input type="hidden" name="reallyName" value="<%=form.getReallyName()%>"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">��ϵ��ַ</div></td>
              <td>&nbsp;<input type="text" name="address"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">��ϵ�绰</div></td>
              <td>&nbsp;<input type="text" name="tel"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">���ʽ</div></td>
              <td>&nbsp;
			  <select name="setMoney" class="textarea">
			        <option value="">��ѡ��</option>
      <option value="���и���">���и���</option>
      <option value="��������">��������</option>
      <option value="�ֽ�֧��">�ֽ�֧��</option>
    </select>
			  </td>
            </tr>

            <tr>
              <td height="30"><div align="center">���ͷ�ʽ</div></td>
              <td>&nbsp;<select name="post" class="textarea">
			        <option value="">��ѡ��</option>
      <option value="��ͨ�ʼ�">��ͨ�ʼ�</option>
      <option value="�ؿ�ר��">�ؿ�ר��</option>
      <option value="EMSר�ݷ�ʽ">EMSר�ݷ�ʽ</option>
    </select>
			  
			  </td>
            </tr>
            <tr>
              <td height="60"><div align="center">��ע��Ϣ</div></td>
              <td>&nbsp;<textarea name="bz"></textarea></td>
            </tr>
          </table>
		  <br>

                <input type="submit" name="Submit2" value="�ύ">&nbsp;
               <input type="reset" name="reset" value="���">&nbsp;
          <input type="button" name="back" value="����" onClick="javasrcipt:history.go(-1)">
              </form>
        </div>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr bgcolor="#FFFFFF">
   <td height="100"><p align="center"><jsp:include page="downNews.jsp"/></p></td>
  </tr>
</table>
</body>
</html>
