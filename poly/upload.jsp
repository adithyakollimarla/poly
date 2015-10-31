<%@ page language="java" import="java.sql.*,javax.servlet.*" %> 
<%
String v=request.getParameter("t2"); 
String v1=request.getParameter("comments");
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:xe","",""); 
Statement st=cn.createStatement(); 
int r=st.executeUpdate("insert into upload values('"+v+"','"+v1+"')"); 
if(r!=0) 
{ 
%> 
Upload Successful 
<% 
response.sendRedirect("index.html");
} 
else 
{ 
out.println("UPload failed"); 
response.sendRedirect("upload.html");
} 
st.close(); 
cn.close(); 
}catch(Exception e) { out.println(" Upload failed"+e); 
%> 
<P><a href = "reg.html" target =f2 > <B> Back<B> </a> 
<% 
} 
%> 
 
