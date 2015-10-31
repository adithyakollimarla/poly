<%@ page language="java" import="java.sql.*,javax.servlet.*" %> 
<% 
String str; 
int flag=1;
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection cn=DriverManager.getConnection("jdbc:odbc:mydsn","",""); 
Statement st=cn.createStatement(); 
ResultSet rs=st.executeQuery("select * from alumupdate"); 
while(rs.next())
{
out.println("<br>"+"Name               :"+rs.getString(1));
out.println("<br>"+"Description        :"+rs.getString(2));
flag=0;
%>
 Alumni details Successful 
<%
}
if(flag==1)
out.println(" Alumni details failed");
%>
<a href = "projectinfo.html" target =f2 > <B> Back<B> </a>
<%
st.close(); 
cn.close(); 
}catch(Exception e) 
{ out.println("no details"); 
} 
%> 
