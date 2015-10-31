<%@ page language="java" import="java.sql.* , javax.servlet.*" %> 
<% 
String v1,v2,str; 
v1=request.getParameter("username"); 
v2=request.getParameter("password"); 
int flag=1;
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:xe","",""); 
Statement st=cn.createStatement(); 
ResultSet rs=st.executeQuery("select * from reg where name='"+v1+"' and password='"+v2+"'"); 
while(rs.next()) 
{ 
flag=0;
%>
Login Successful 
<% 
response.sendRedirect("upload1.html");
} 
if (flag==1) 
{ 
out.println("Login failed"); 
response.sendRedirect("index.html");
} 
st.close(); 
cn.close(); 
}catch(Exception e) { out.println("invalid "+e); 
%> <P><a href = "index.html" target =f2 > <B> Back<B> </a>
<% 
} 
%> 
