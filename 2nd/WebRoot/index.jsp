<%@ page language = "java" contentType = "text/html; charset = gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
  	��ӭ~
  	<img src = "image/sm.jpg" style="height: 202px; width: 214px; ">
  	<script type = "text/javascript">
		 	function validate(){
		 		if(loginform.author.value == "")
		 		{
		 			alert("���߲���Ϊ�գ�����������~");
		 			return;
		 		}
		 		loginform.submit();
		 	}
		 </script>
    <form action="search.action">
   		��������������:<input type = "text" name = "Name" style="height: 24px; width: 145px; "/>  
   		<input type = "submit" value = "��ѯ" >
    </form>
  </body>
</html>
