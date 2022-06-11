<%@ page import="java.sql.*" %> 
<html>
    <head>
    </head>
    <body style="font-size: medium;; color:blue; ">
    <%
    String username = request.getParameter("username");
						String msg = request.getParameter("msg");
						if(!(msg==null)){
						if(msg.equals("success"))
						{ %> <h2> <font color="#006633">Job Information Added Successfully</font></h2><% }
						if(msg.equals("failure"))
						{ %> <h2> <font color="#FF0000">Error in data: information not added</font></h2>
						<%}
						}%>
						
						   <form>
        	<a href ="Index.jsp?username=<%=username%>">Home</a>
        </form>
        
						
        <form method="post" action="AddJob">
            <table>
            
                <tr><td><b>Enter the Job detials. <input type="hidden" name="username" value="<%=username %>"></input><br /><b /></td></tr>
                
                <tr><td><b>Select job category:</b></td><td>
                <select  name="jobcategory">
                	<option value="account">account</option>
                	<option value="admin">admin</option>
                	<option value="audit">audit</option>
                	<option value="banking">banking</option>
                	<option value="data">data</option>
                	<option value="general">general</option>
                	<option value="hr">hr</option>
                	<option value="lab">lab</option>
                	<option value="networking">networking</option>
                	<option value="nontechnical">nontechnical</option>
                	<option value="ortho">ortho</option>
                	<option value="payroll">payroll</option>
                	<option value="software">software</option>
                	<option value="surgeon">surgeon</option>
                	<option value="tax">tax</option>
                	<option value="technical">technical</option>
                	<option value="testing">testing</option>
                	<option value="web">web</option>
                </select>
                </td></tr>
                <tr><td ><b>Job Date:</b></td><td>
                <input  type="text" name="jobdate" value=""></input></td></tr>
                <tr><td><b>Company:</b></td><td>
                <textarea  type="text" name="companyname" value=""></textarea></td></tr>
                <tr><td ><b>Position:</b></td><td>
                <textarea  type="text" name="position" value=""></textarea></td></tr>
                <tr><td><b>Eligibility:</b></td><td>
                <textarea  type="text" name="eligibility" id="ename" value=""></textarea></td></tr>
                <tr><td ><b>Location:</b></td><td>
                <textarea  type="text" name="location" value=""></textarea></td></tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <tr><td></td>
                <td><input  type="submit" name="EnterDetailsHW" value="Submit"></input></td></tr>
            </table>
        </form>   
    </body>
</html>