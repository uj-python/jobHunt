<%@ page import="java.sql.*" %> 
<html>
    <head>
    </head>
    <body style="font-size: medium;; color:blue; ">
    <a href="login.jsp">Logout</a>
    <br/>
     <br/>
<a href="AddJob.jsp?username=<%=request.getParameter("username")%>"> <img src="images/add.jpg"></img></a>
<br/>
<br/>
<br/>
<a href="DeleteJob.jsp?username=<%=request.getParameter("username")%>"> <img src="images/delete.jpg"></img></a>
</body>
</html>