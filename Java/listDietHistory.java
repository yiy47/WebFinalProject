/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Rachel
 */
@WebServlet(urlPatterns = {"/listDietHistory"})
public class listDietHistory extends HttpServlet {

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /*Get user email*/
            HttpSession session = request.getSession(false);
            String email = (String) session.getAttribute("email");
            
            /* Insert diet entry to database*/
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
                conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
                
                st = conn.createStatement();
                String q2 = new String("SELECT * FROM HEALTHYLIST WHERE EMAIL='"+email+"'");
                rs = st.executeQuery(q2);                            
            }        
            catch (SQLException se)
            {
                se.printStackTrace();  
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(insertDietEntry.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Diet History</title>");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">");
            out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>");
            out.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\"   href=\"display.css\" />");

            out.println("</head>");
            out.println("<body>");
            out.println("<nav class=\"navbar navbar-inverse\">");
            out.println("<div class=\"container-fluid\">");
            out.println("<div class=\"navbar-header\">");
            out.println("<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n" +
"        <span class=\"icon-bar\"></span>\n" +
"        <span class=\"icon-bar\"></span>\n" +
"        <span class=\"icon-bar\"></span> \n" +
"      </button>");
            out.println("<a class=\"navbar-brand\" href=\"userpage.jsp\">Fitness Control</a>");
            out.println("</div>");
            out.println("<div class=\"collapse navbar-collapse\" id=\"myNavbar\">");
            out.println("<ul class=\"nav navbar-nav navbar-right\">");
            out.println("<li> <a href=\"Diet.jsp\"> DIET </a></li>");
            out.println("<li> <a href=\"Exercise.jsp\">EXERCISE</a></li>");
            out.println("<li class=\"dropdown\">");
            out.println("<a class=\"dropdown-toggle\" data-toggle=\"dropdown\">My Account <b class=\"caret\"></b></a>");
            out.println("<ul class=\"dropdown-menu\">");
            out.println("<li><a href=\"displayProfile\">My Profile</a></li>");
            out.println("<li><a href=\"dietdiaryM.jsp\">Record Diet</a></li>");
            out.println("<li><a href=\"listDietHistory\">Diet History</a></li>");
            out.println("<li><a href=\"displayFigure\">Figure Data</a></li>");
            out.println("<li><a href=\"logout.jsp\">Log out</a></li>");
        
            out.println("</ul>");
            out.println("</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</div>");
            out.println("</nav> ");            
            out.println("<h1>Your Diet History</h1>");
            out.println("<div class=\"container\">");
            out.println("  <div class=\"table-responsive\">");
            out.println("  <table class=\"table\">");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Date</th>");
            out.println("<th>Calories(kcal)</th>");
            out.println("<th>Protein(g)</th>");
            out.println("<th>Carbs(g)</th>");
            out.println("<th>Sugar(g)</th>");
            out.println("<th>Fat(g)</th>");
            out.println("<th>Saturates(g)</th>");
            out.println("<th>Salt(g)</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");
            try{
                while(rs.next())
                {
                    out.println("<tr><td>"
                    +rs.getString("DATE")+"</td><td>"
                    +rs.getString("CAL")+"</td><td>"
                    +rs.getString("PRO")+"</td><td>"       
                    +rs.getString("CARBS")+"</td><td>"
                    +rs.getString("SUGAR")+"</td><td>"
                    +rs.getString("FAT")+"</td><td>"
                    +rs.getString("SAT")+"</td><td>"
                    +rs.getString("SALT")+"</td>");
                    out.println("</tr>");
                }
            }
            catch(SQLException sqle){
                sqle.printStackTrace();  
            }
            out.println("</tbody>");
            out.println("  </table>");
            out.println("  </div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
