<%@ page language = "java" contentType = "text/html; charset = gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
    <s:iterator value="baas"> 
    <s:property value="ISBN" /> 
    <s:property value="title" />
    <s:property value="authorID" />
    <s:property value="publisher" />
    <s:property value="publishDate" />
    <s:property value="price" />
    <s:a href="delete.action?isbn=%{ISBN}" onclick="return confirm('È·¶¨£¿');">É¾³ý</s:a>
    
   <br/>
    </s:iterator>
    
  </body>
</html>

