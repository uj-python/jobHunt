/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.smk;

import java.util.*;
import java.sql.*;

/**
 *
 * @author home cutomer
 */
public class DBManager {

    private Connection dbConn = null;
    private Statement stmt = null;
    private ResultSet rs = null;
    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/jobhunt?autoReconnect=true&useSSL=false";

    public Connection openDbConnection() {
        System.out.println("got here");
        try {
        System.out.println("---------------------------------got here");
            Class.forName(driver).newInstance();
            dbConn = DriverManager.getConnection(url,"root","root");
            stmt = dbConn.createStatement();
            return dbConn;
        } catch (Exception e) {
            return null;
        }
    }

    public ResultSet getResultSet(String sql) {
        try {
        	System.out.println("sql "+sql);
            rs = stmt.executeQuery(sql);
            return rs;
        } catch (Exception e) {
            return null;
        }
    }

    public int updateRecord(String sql) {
        int updated = 0;
        try {
            updated = stmt.executeUpdate(sql);
            return updated;
        } catch (Exception e) {
            return updated;
        }
    }

    public void closeConnection() {
        try {
            dbConn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
