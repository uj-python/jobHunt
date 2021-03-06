<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" import="java.sql.*,java.util.*,com.matrix.*" %>
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
        <choice next="#hardware" dtmf="1">Audit and Risk.</choice>
        <choice next="#web" dtmf="2">Account.</choice>        
        <choice next="#software" dtmf="3">Tax.</choice> 
               
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
                con = DriverManager.getConnection(url,"root","root");
                stmt = con.createStatement();
                rst = stmt.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM audit");
                while (rst.next()) {
                       %>
                }    
    <form id="hardware">
        <block>
            <prompt>...Date...<%=rst.getString(1)%></prompt>
            <prompt>...Company...<%=rst.getString(2)%></prompt>
            <prompt>...Position...<%=rst.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst.getString(4)%></prompt>
            <prompt>...Location...<%=rst.getString(5)%></prompt>
            <goto next="#gotomenu"/>
        </block>
    </form>
    <%}
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
                String url1 = "jdbc:mysql://localhost:3306/jobhunt?user=root&password=root";                
                con1 = DriverManager.getConnection(url1);
                stmt1 = con1.createStatement();
                rst1 = stmt1.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM account");
                while (rst1.next()) {
    %>
    <form id="web">
        <block>
            <prompt>...Date...<%=rst1.getString(1)%></prompt>
            <prompt>...Company...<%=rst1.getString(2)%></prompt>
            <prompt>...Position...<%=rst1.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst1.getString(4)%></prompt>
            <prompt>...Location...<%=rst1.getString(5)%></prompt>
            <goto next="#gotomenu"/>
        </block>
    </form>
    <%}
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
                String url2 = "jdbc:mysql://localhost:3306/jobhunt?user=root&password=root";                
                con2 = DriverManager.getConnection(url2);
                stmt2 = con2.createStatement();
                rst2 = stmt2.executeQuery("SELECT DATE_FORMAT(date,'%e-%m-%Y'),companyname,position,eligibility,location FROM tax");
                while (rst2.next()) {
    %>
    <form id="software">
        <block>
            <prompt>...Date...<%=rst2.getString(1)%></prompt>
            <prompt>...Company...<%=rst2.getString(2)%></prompt>
            <prompt>...Position...<%=rst2.getString(3)%></prompt>
            <prompt>...Elegibility...<%=rst2.getString(4)%></prompt>
            <prompt>...Location...<%=rst2.getString(5)%></prompt>
            <goto next="#gotomenu"/>
        </block>
    </form>
    <%}
                rst2.close();
                con2.close();
                stmt2.close();
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
        <choice next="http://localhost:8080/jobHunt/jobCategory/ComputerIT.jsp" dtmf="7">
            Previous Menu.            
        </choice>
        <!--<choice next="http://localhost:8084/jobHunt/JRole/trainingCIT.vxml" dtmf="1">-->
        <choice next="http://localhost:8080/jobHunt/Main.jsp" dtmf="8">
            Main Menu.            
        </choice>            
    </menu>  
</vxml>