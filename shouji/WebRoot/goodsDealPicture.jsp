<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="com.jspsmart.upload.*" %>
<%java.util.Date date=new java.util.Date();%>
<jsp:useBean id="up" scope="page" class="com.jspsmart.upload.SmartUpload" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ͼƬ�ϴ�����ҳ</title>
</head>

<body>
<%
         int count=0;
	     up.initialize(pageContext);
         up.setMaxFileSize(1000000);
         up.setAllowedFilesList("gif,jpg");
         try{up.upload();
         }catch(Exception e){}
         String name=String.valueOf(date.getTime());

         File f=up.getFiles().getFile(0);
         String path="goodsPicture/"+name+"."+f.getFileExt();

        if(!f.isMissing()){
              try { f.saveAs(path);
              } catch (Exception e) {
                  out.print(f.isMissing());
                  out.print("<br>");}
        } else {
            out.print("����2");

        }
%>
 <meta http-equiv="refresh" content="0;URL=goodsAction.do?action=4&path=<%=path%>">

</body>
</html>
