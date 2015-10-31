<%@ page language="java" import="java.sql.*,javax.servlet.*" %> 
<%

try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:xe","",""); 
Statement st=cn.createStatement(); 

ResultSet r=st.executeQuery("select * from upload"); 

while(r.next()) 
out.println(r.getString(1)+"<===>"+r.getString(2)+"<br>");
%>
<P><a href = "uploads.html" target =f2 > <B> REPLY<B> </a>
<%
//response.sendRedirect("upload1.html");
st.close(); 
cn.close(); 
}catch(Exception e) { out.println(" Upload failed"+e); 
%> 
<P><a href = "index.html" target =f2 > <B> Back<B> </a> 
<% 
} 
%> 
 



