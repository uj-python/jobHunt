package com.smk;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SuLEmaN
 */
public class AddJob extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    String jobcategory = request.getParameter("jobcategory");
    String jobdate = request.getParameter("jobdate");
    String companyname = request.getParameter("companyname");
    String position = request.getParameter("position");
    String eligibility = request.getParameter("eligibility");
    String location = request.getParameter("location");
    String username= request.getParameter("username");
    
DBManager db = new DBManager();
Connection con =db.openDbConnection();
try
{
if(con!=null)
{
    String sql = "insert into "+jobcategory+" (date, companyname, position, eligibility, location, username) values('" +jobdate+ "','" +companyname+ "','" +position+ "','" +eligibility+ "','" +location+ "','" +username+ "') ";
    System.out.println(sql);
    int rs = db.updateRecord(sql);
    if(rs>0)
    {
        response.sendRedirect("AddJob.jsp?msg=success&username="+username+"");
    }
 else
     {
        response.sendRedirect("AddJob.jsp?msg=failure");
    }
    }
}
    catch(Exception e){System.out.println("error : "+e);}
    finally{db.closeConnection();}
 } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
