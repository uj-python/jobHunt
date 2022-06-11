<%@ page import="java.sql.*" %> 

<%@page import="com.smk.DBManager"%>
<%
String username = request.getParameter("username");
%>
<html>
    <head>
    </head>
    <body style="font-size: medium;; color:blue; ">
    
    <form>
        	<a href ="Index.jsp?username=<%=username%>">Home</a>
        </form>
        
    <%
    
	String msg = request.getParameter("msg");
	if(!(msg==null)){
	if(msg.equals("success"))
	{ %> <h2> <font color="#006633">Job removed successfully</font></h2><% }
	if(msg.equals("failure"))
	{ %> <h2> <font color="#FF0000">Error in data: Job deletion failed</font></h2>
	<%}
	}
	
    	
    	DBManager db = new DBManager();
		db.openDbConnection();
		ResultSet res =null;
		
		if(!(username==null)){
			res	= db.getResultSet("Select * from account where username = '" +username+ "' ");
			if(res==null)
			{
				out.println("NO jobs posted by this user");
			}
			else
			{
			if(res.next())
			{
			%>
        				
			<form method="post">
	            <table border="1">
	            <tr><td><b><font color="green">Accounts</font></b></td></tr>            
	                <tr><th>Date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
	                <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(2)%>&jobcategory=account&username=<%=username %>"> delete </a></td></tr>
			<% while(res.next())
			{
		%>
                <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=account&username=<%=username %>"> delete </a></td></tr> 
                <%}
			%>
			  </table><br /><br />
			<%
                }
			}		
		res = null;
		res	= db.getResultSet("Select * from admin where username = '" +username+ "' ");
		if(res==null)
		{
			out.println("NO jobs posted by this user");
		}
		else
		{
		if(res.next())
		{
		%>
			
		<form method="post">
            <table border="1">
            <tr><td><b><font color="green">Admin</font></b></td></tr>            
                <tr><th>date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
                <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=admin&username=<%=username %>"> delete </a></td></tr>
		<% while(res.next())
		{
	%>
            <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=admin&username=<%=username %>"> delete </a></td></tr>
            <%}
		%>
		  </table> <br /><br />
		<%
            }
		}		
	res = null;
	res	= db.getResultSet("Select * from audit where username = '" +username+ "' ");
	if(res==null)
	{
		out.println("NO jobs posted by this user");
	}
	else
	{
	if(res.next())
	{
	%>
		
	<form method="post">
        <table border="1">
        <tr><td><b><font color="green">Audit</font></b></td></tr>            
            <tr><th>date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
            <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=audit&username=<%=username %>"> delete </a></td></tr>
	<% while(res.next())
	{
%>
        <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=audit&username=<%=username %>"> delete </a></td></tr>
        <%}
	%>
	  </table> <br /><br />
	<%
        }
	}		
res = null;
res	= db.getResultSet("Select * from data where username = '" +username+ "' ");
if(res==null)
{
	out.println("NO jobs posted by this user");
}
else
{
if(res.next())
{
%>
	
<form method="post">
    <table border="1">
    <tr><td><b><font color="green">Data</font></b></td></tr>            
        <tr><th>date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
        <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=data&username=<%=username %>"> delete </a></td></tr>
<% while(res.next())
{
%>
    <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=data&username=<%=username %>"> delete </a></td></tr>
    <%}
%>
</table> <br /><br />
<%
    }
}		
res = null;
res	= db.getResultSet("Select * from general where username = '" +username+ "' ");
if(res==null)
{
	out.println("NO jobs posted by this user");
}
else
{
if(res.next())
{
%>
	
<form method="post">
    <table border="1">
    <tr><td><b><font color="green">General medical</font></b></td></tr>            
        <tr><th>date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
        <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=general&username=<%=username %>"> delete </a></td></tr>
<% while(res.next())
{
%>
    <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=general&username=<%=username %>"> delete </a></td></tr>
    <%}
    }
%>
</table> <br /><br />
<%
}		
res = null;	
res	= db.getResultSet("Select * from hr where username = '" +username+ "' ");
if(res==null)
{
	out.println("NO jobs posted by this user");
}
else
{
if(res.next())
{
%>
	
<form method="post">
    <table border="1">
    <tr><td><b><font color="green">hr</font></b></td></tr>            
        <tr><th>date</th><th>company</th><th>position</th><th>elgibility</th><th>localtion</th><th>&nbsp</th></tr>
        <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=hr&username=<%=username %>"> delete </a></td></tr>
<% while(res.next())
{
%>
    <tr><td><%=res.getString(1)%></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td><td><%=res.getString(5)%></td><td><a href="DeleteJob?jobid= <%=res.getString(7)%>&jobcategory=hr&username=<%=username %>"> delete </a></td></tr>
    <%}
    }
%>
</table> <br /><br />
<%
}		
res = null;
		%>	
		
		
		<%} %>
		
        </form>
        
    </body>
</html>