/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yaoyi
 */
@WebServlet(urlPatterns={"/addFigure"})
public class addFigure extends HttpServlet {
    private Connection conn;
//    private Statement st;
//    private ResultSet rs=null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        fitbean fb = new fitbean();
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        session.setAttribute("fb", fb);
        
        String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
        
        try{
            conn = DriverManager.getConnection(connectionURL, "IS2560","IS2560");
            Statement st = conn.createStatement();   
            st = conn.createStatement();
            
//            String email = request.getParameter("email");
            String height = request.getParameter("height");
            Double height1 = Double.valueOf(height);
            String weight = request.getParameter("weight");
            Double weight1 = Double.valueOf(weight);

            
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String updatedate = dateFormat.format(date);
//            out.println(updatedate);
            
            String checkDate = "SELECT * FROM FIGURE WHERE UPDATEDATE='"+updatedate+"'AND EMAIL='"+email+"'";
//            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(checkDate);
            
            if (rs.next()){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('You already have added a record today. Please try again tomorrow!');");
                out.println("location='displayFigure';");
                out.println("</script>");            
            } else {
            String q4 = "INSERT INTO FIGURE (EMAIL,UPDATEDATE,HEIGHT,WEIGHT) VALUES ('" + email + "','"+ updatedate +
                   "'," + height1 + "," + weight1 + ")";
            int j = st.executeUpdate(q4);
            if (j>0){
                session.setAttribute("email", email);
//                out.println("Successfully insert.");         
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Insert successfully!');");
                out.println("location='displayFigure';");
                out.println("</script>");   
            } else {
                out.println("failure");  
            }
            }
            } catch (SQLException ex) {
            Logger.getLogger(profileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            }

    

    }
    

  

