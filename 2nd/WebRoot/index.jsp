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
  	欢迎~
  	<img src = "image/sm.jpg" style="height: 202px; width: 214px; ">
  	<script type = "text/javascript">
		 	function validate(){
		 		if(loginform.author.value == "")
		 		{
		 			alert("作者不能为空，请重新输入~");
		 			return;
		 		}
		 		loginform.submit();
		 	}
		 </script>
    <form action="search.action">
   		请输入作者姓名:<input type = "text" name = "Name" style="height: 24px; width: 145px; "/>  
   		<input type = "submit" value = "查询" >
    </form>
  </body>
</html>
