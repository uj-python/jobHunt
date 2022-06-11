<%@ page import="java.sql.*" %> 
<html>
    <head>
    </head>
    <body style="font-size: medium;; color:blue; ">
    <%
						String msg = request.getParameter("msg");
						if(!(msg==null)){
						if(msg.equals("success"))
						{ %> <h2> <font color="#006633">User Created Successfully</font></h2><% }
						if(msg.equals("failure"))
						{ %> <h2> <font color="#FF0000">Error in data: User creation failed</font></h2>
						<%}
						}%>
    
						
        <form method="get" action="CreateUser">
            <table>
                <tr><td><b>Enter User details right here.<br /><b /></td></tr>                
                <tr><td><b>User name :</b></td><td>
                <input type="text" name="username"></input></td></tr>
                <tr><td ><b>Password :</b></td><td>
                <input type="password" name="password"></input></td></tr>                
                <tr><td><input  type="submit" value="Submit"></input></td>
               <td><a href="login.jsp">Back</a></td></tr>
            </table>
        </form>   
    </body>
</html>