<%@ page language="java" import="java.sql.*,javax.servlet.*" %> 
<%
String v=request.getParameter("name"); 
String v1=request.getParameter("Lastname");
String v2=request.getParameter("Branch");
String v3=request.getParameter("email");
String v4=request.getParameter("Password");
String v5=request.getParameter("Confirmpassword");
String v6=request.getParameter("msg");
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:xe","",""); 
Statement st=cn.createStatement(); 
out.println(v+v1+v2+v3+v4+v5+v6);
int r=st.executeUpdate("insert into reg values('"+v+"','"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')"); 
out.println("WELCOME2");
if(r!=0) 
{ 
%> 
Registration Successful 
<% 
response.sendRedirect("index.html");
} 
else 
{ 
out.println("Registration failed"); 
response.sendRedirect("reg.html");
} 
st.close(); 
cn.close(); 
}catch(Exception e) { out.println(" Registration failed"+e); 
%> 
<P><a href = "reg.html" target =f2 > <B> Back<B> </a> 
<% 
} 
%> 
 
