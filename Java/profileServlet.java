/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
@WebServlet(urlPatterns={"/profileServlet"})
public class profileServlet extends HttpServlet {
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
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");

        
        String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
        
        try{
            conn = DriverManager.getConnection(connectionURL, "IS2560","IS2560");
            Statement st = conn.createStatement();   
            Statement st1 = conn.createStatement();
            st = conn.createStatement();
            st1 = conn.createStatement();
//            String email = request.getParameter("email");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String gender = request.getParameter("gender");
            String year = request.getParameter("byear");
            String month = request.getParameter("bmonth");
            String day = request.getParameter("bday");
            String birthdate = year + "-" + month + "-" + day;
            
            String height = request.getParameter("height");
            Double height1 = Double.valueOf(height);
            String weight = request.getParameter("weight");
            Double weight1 = Double.valueOf(weight);

            
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String updatedate = dateFormat.format(date);
//            out.println(updatedate);
            
           
            
            String q3 = "INSERT INTO USERPROFILE (EMAIL,FIRSTNAME,LASTNAME,GENDER,BOD) VALUES ('" + email + "','"+ firstname+
                   "','" + lastname + "','" + gender + "','" + birthdate + "')";
            int i = st.executeUpdate(q3);
            String q4 = "INSERT INTO FIGURE (EMAIL,UPDATEDATE,HEIGHT,WEIGHT) VALUES ('" + email + "','"+ updatedate +
                   "'," + height1 + "," + weight1 + ")";
            int j = st1.executeUpdate(q4);
            if (i>0 && j>0){
                session.setAttribute("email", email);
//                out.println("Successfully insert.");         
                response.sendRedirect("userpage.jsp");
            } else {
                out.println("failure");  
            }
            } catch (SQLException ex) {
            Logger.getLogger(profileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            }

    

    }
    

  

