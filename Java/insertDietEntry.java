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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rachel
 */
@WebServlet(urlPatterns = {"/insertDietEntry"})
public class insertDietEntry extends HttpServlet {

    private Connection conn;
    private Statement st, st2;
    private ResultSet rs;
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
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        /*get parameters*/
        double cal=Double.valueOf(request.getParameter("cal"));
        double pro=Double.valueOf(request.getParameter("protein"));
        double carbs=Double.valueOf(request.getParameter("carbs"));
        double sugar=Double.valueOf(request.getParameter("sugar"));
        double fat=Double.valueOf(request.getParameter("fat"));
        double sat=Double.valueOf(request.getParameter("sat"));
        double salt=Double.valueOf(request.getParameter("salt"));
        
        boolean entryExist = false;

        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /*Get user email*/

//            String email = "user10@gmail.com";
            
            /* Insert diet entry to database*/
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
                conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
                
                DateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
                Date date = new Date();
                String updatedate = dateFormat.format(date);
                
                st2 = conn.createStatement();
                String q2 = new String("SELECT * FROM HEALTHYLIST WHERE EMAIL='"+email+"' AND DATE='"+updatedate+"'");
                rs = st2.executeQuery(q2);
                
                if(!rs.next() )
                {
                    st = conn.createStatement();
                    String q1 = new String("INSERT INTO HEALTHYLIST (EMAIL, CAL, PRO, CARBS, SUGAR, FAT, SAT, SALT, DATE) "+
                        "VALUES ('"
                        +email+"', "
                        +cal+", "
                        +pro+", "
                        +carbs+", "
                        +sugar+", "
                        +fat+", "
                        +sat+", "
                        +salt+", '"
                        +updatedate+"')"
                    );
                    st.executeUpdate(q1);
                }else{
                    entryExist = true;
                }
                
                
            }        
            catch (SQLException se)
            {
                se.printStackTrace();  
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(insertDietEntry.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Daily Diet</title>");   
            out.println("<link rel=\"stylesheet\" type=\"text/css\"   href=\"display.css\" />");

            out.println("</head>");
            out.println("<body>");

            if(entryExist==false){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Insert successfully!');");
                out.println("location='listDietHistory';");
                out.println("</script>");
            }else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('You already have added a record today. Please try again tomorrow!');");
                out.println("location='listDietHistory';");
                out.println("</script>");  
            }
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
