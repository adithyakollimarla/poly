<%@ page language="java" import="java.sql.* , javax.servlet.*" %> 
<% 
String v1,v2,str; 
v1=request.getParameter("t1"); 
v2=request.getParameter("t2"); 
int flag=1;
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:mydsn","",""); 
Statement st=cn.createStatement(); 
ResultSet rs=st.executeQuery("select * from mainpage where UserName='"+v1+"' and Password='"+v2+"'"); 
while(rs.next()) 
{ 
flag=0;
out.println(rs.getString(2));
%> 
Login Successful 
<a href = "index.html" target =f2 > <B> Back<B> </a> 
<% 
} 
if (flag==1) 
{ 
out.println("Login failed"); 
response.sendRedirect("mainpage.html");
} 
st.close(); 
cn.close(); 
}catch(Exception e) { out.println(" Login failed"); 
%> 
<P><a href = "mainpage.html" target =f2 > <B> Back<B> </a> 
<% 
} 
%> 
