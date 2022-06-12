<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" import="java.sql.*,java.util.*" %>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
<vxml version="2.0">	
    <nomatch>
        No Match! I'm sorry, I didn't understand you.  Could you please try that again? 
        <reprompt />
    </nomatch>
    <noinput>
        No Input! I'm sorry, I didn't hear anything.  Could you please try that again? 
        <reprompt />
    </noinput>     
    <menu id="menuCategory">
        <property name="inputmodes" value="dtmf"/>
        <prompt bargein="false">
            ..please press the related number. to choose the job role. from the following list.
        </prompt>
        <prompt>
            <enumerate>
                <value expr="_prompt"/> press <value expr="_dtmf"/>, 
            </enumerate>
        </prompt>    
        <choice next="#hardware" dtmf="1">Hardware and Networking.</choice>
        <choice next="#web" dtmf="2">Web Designing and Graphics.</choice>        
        <choice next="#software" dtmf="3">Software Development and Programming.</choice> 
        <choice next="#testing" dtmf="4">Software Testing.</choice>        
        
    </menu>   
    <%
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver).newInstance();
            Connection con = null;
            ResultSet rst = null;
            Statement stmt = null;
            String dbUname = "root";
            String dbPass = "root";
            try {
                String url = "jdbc:mysql://localhost:3306/jobhunt?autoReconnect=true&useSSL=false";                
                DriverManager.getConnection(url,"root","root");
                stmt = con.createStatement();
                rst = stmt.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM networking");
                %>
    <form id="hardware">
        <block>
        <% while (rst.next()) 
        {%>
            <prompt>...Date...<%=rst.getString(1)%></prompt>
            <prompt>...Company...<%=rst.getString(2)%></prompt>
            <prompt>...Position...<%=rst.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst.getString(4)%></prompt>
            <prompt>...Location...<%=rst.getString(5)%></prompt>
            <%} %>
            <goto next="#gotomenu"/>
        </block>
    </form>
    <%
                rst.close();
                con.close();
                stmt.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }%>
    <%
            String driver1 = "com.mysql.jdbc.Driver";
            Class.forName(driver1).newInstance();
            Connection con1 = null;
            ResultSet rst1 = null;
            Statement stmt1 = null;            
            try {
                String url1 = "jdbc:mysql://localhost:3306/jobhunt?autoReconnect=true&useSSL=false";                
                con1 = DriverManager.getConnection(url1);
                stmt1 = con1.createStatement();
                rst1 = stmt1.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM web");
                
    %>
    <form id="web">
        <block>
        <%while (rst1.next()) 
        { %>
            <prompt>...Date...<%=rst1.getString(1)%></prompt>
            <prompt>...Company...<%=rst1.getString(2)%></prompt>
            <prompt>...Position...<%=rst1.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst1.getString(4)%></prompt>
            <prompt>...Location...<%=rst1.getString(5)%></prompt>
            <%} %>
            <goto next="#gotomenu"/>
        </block>
    </form>
    <%
                rst1.close();
                con1.close();
                stmt1.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }%>
    <%
       String driver2 = "com.mysql.jdbc.Driver";
            Class.forName(driver2).newInstance();
            Connection con2 = null;
            ResultSet rst2 = null;
            Statement stmt2 = null;            
            try {
                String url2 = "jdbc:mysql://localhost:3306/jobhunt?autoReconnect=true&useSSL=false";                
                con2 = DriverManager.getConnection(url2);
                stmt2 = con2.createStatement();
                rst2 = stmt2.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM software");
                
    %>
    <form id="software">
        <block>
		<%while (rst2.next()) { %>
            <prompt>...Date...<%=rst2.getString(1)%></prompt>
            <prompt>...Company...<%=rst2.getString(2)%></prompt>
            <prompt>...Position...<%=rst2.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst2.getString(4)%></prompt>
            <prompt>...Location...<%=rst2.getString(5)%></prompt>            
			<%}%>
			<goto next="#gotomenu"/>
        </block>
    </form>
    <%
                rst2.close();
                con2.close();
                stmt2.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }%>
            
            
            
    <%
       String driver3 = "com.mysql.jdbc.Driver";
            Class.forName(driver3).newInstance();
            Connection con3 = null;
            ResultSet rst3 = null;
            Statement stmt3 = null;            
            try {
                String url3 = "jdbc:mysql://localhost:3306/jobhunt?autoReconnect=true&useSSL=false";                
                con3 = DriverManager.getConnection(url3);
                stmt3 = con3.createStatement();
                rst3 = stmt3.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM testing");
    %>
    <form id="testing">
        <block>
        <%while (rst3.next()) 
        { %>
            <prompt>...Date...<%=rst3.getString(1)%></prompt>
            <prompt>...Company...<%=rst3.getString(2)%></prompt>
            <prompt>...Position...<%=rst3.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst3.getString(4)%></prompt>
            <prompt>...Location...<%=rst3.getString(5)%></prompt>
            <%} %>
            <goto next="#gotomenu"/>
        </block>
    </form>
  <%
                rst3.close();
                con3.close();
                stmt3.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }%>
    <menu id="gotomenu">
        <property name="inputmodes" value="dtmf"/>
        <prompt bargein="false">
            .Goto.
        </prompt>
        <prompt>
            <enumerate>
                <value expr="_prompt"/> press <value expr="_dtmf"/>, 
            </enumerate>
        </prompt>    
        <!--<choice next="http://localhost:8084/jobHunt/JRole/trainingCIT.vxml" dtmf="1">-->
        <choice next="jobHunt/jobCategory/ComputerIT.jsp" dtmf="7">
            Previous Menu.            
        </choice>
        <!--<choice next="http://localhost:8084/jobHunt/JRole/trainingCIT.vxml" dtmf="1">-->
        <choice next="jobHunt/Main.jsp" dtmf="8">
            Main Menu.            
        </choice>            
    </menu>  
</vxml>