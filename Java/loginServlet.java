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
@WebServlet(urlPatterns={"/loginServlet"})
public class loginServlet extends HttpServlet {
    private Connection conn;
    private Statement st;
    private ResultSet rs=null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        fitbean fb = new fitbean();
        HttpSession session = request.getSession();
        session.setAttribute("fb", fb);
        
        String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
        
        try{
            conn = DriverManager.getConnection(connectionURL, "IS2560","IS2560");
            st = conn.createStatement();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String q1 = new String("SELECT * FROM USERPASS WHERE EMAIL='"+email+"' AND PASSWORD='"+password+"'");
            rs = st.executeQuery(q1);
            if(rs.next()){
                session.setAttribute("email", email);
                response.sendRedirect("userpage.jsp");                
//                out.println("Welcome");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email or password error.');");
                out.println("location='login.jsp';");
                out.println("</script>");                
//                out.println("Sorry");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } 
    

    }
    

  
}

