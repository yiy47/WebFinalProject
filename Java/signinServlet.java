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
@WebServlet(urlPatterns={"/signinServlet"})
public class signinServlet extends HttpServlet {
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
        HttpSession session = request.getSession();

        
        String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
        
        try{
            conn = DriverManager.getConnection(connectionURL, "IS2560","IS2560");
            Statement st = conn.createStatement();            
            st = conn.createStatement();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String password1 = request.getParameter("password1");
            
            
            String queryCheck = "SELECT * FROM USERPASS WHERE EMAIL='"+email+"'";
            Statement st1 = conn.createStatement();
//            st1.setString(1, email);
            ResultSet rs = st1.executeQuery(queryCheck);
            
            
            if((rs.next())){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('The email already exits. Please try again!');");
                out.println("location='signin.jsp';");
                out.println("</script>");
//                out.println("The email already exits");
            } else {
            
            if (password.equals(password1)){
            String q2 = "INSERT INTO USERPASS (EMAIL,PASSWORD) VALUES ('" + email + "','"+password+"')";
            int i = st.executeUpdate(q2);
            if (i>0){
                session.setAttribute("email", email);
//                out.println("Successfully registered");         
                response.sendRedirect("profile.jsp");
            } else {
                out.println("failure");  
            }

            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Please re-enter your password.');");
                out.println("location='signin.jsp';");
                out.println("</script>");
            }
            }
            st.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } 
    

    }
    

  
}

