<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>  

<html>
    <head>
    </head>
    <body style="font-size: medium;; color:blue; ">
    <!-- <%
						String msg = request.getParameter("msg");
						if(!(msg==null)){
						if(msg.equals("success"))
						{ %> <h2> <font color="#006633">Successfully</font></h2><% }
						if(msg.equals("failure"))
						{ %> <h2> <font color="#FF0000">Error in data: User login failed</font></h2>
						<%}
						}%>
    
						 -->
                     

        <form method="post" action="UserLogin">
            <table>
                <tr><th>User Login </th></tr>                
                <tr><td><b>User name :</b></td><td>
                <input type="text" name="username"></input></td></tr>
                <tr><td ><b>Password :</b></td><td>
                <input type="password" name="password"></input></td></tr>                
                <tr><td><input  type="submit" value="Login"></input></td>
                <td> <a href="createUser.jsp">New User</a></td></tr>
                
            </table>
        </form>   
    </body>
</html>