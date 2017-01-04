/*
 * reviewMessages.java
 *
 * Created on February 28, 2007, 12:11 PM
 */


import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yaoyi
 * @version
 */
public class displayProfile extends HttpServlet {
    private Connection conn;
    private Statement st;
    private ResultSet rs=null;
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        
         try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String connectionURL = "jdbc:derby://localhost:1527/IS2560FIT";
            conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
            st = conn.createStatement();
            String q1 = new String("SELECT * FROM USERPROFILE WHERE EMAIL='"+email+"'");
            rs =  st.executeQuery(q1);
        }        
        catch (SQLException se)
        {
            se.printStackTrace();  
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(displayProfile.class.getName()).log(Level.SEVERE, null, ex);
        }
         
         
        /*File SD= new File("c:\\spring\\TmpMsgDat");
        if (!SD.exists()) SD.mkdir();
        FilenameFilter filter = new FilenameFilter() {
            public boolean accept(File dir, String name) {
            return name.startsWith("GB");}
            };
            File[] files = SD.listFiles(filter); */
       
        /* TODO output your page here */
        out.println("<html>");
        out.println("<head>");
        out.println("<title>USER PROFILE</title>");
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
//        out.println("<li><a href=\"#\"><span class=\"glyphicon glyphicon-search\"></span> Search</a></li>");
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
        out.println("<h1 align=\"center\">User Profile</h1>");
        out.println("<div class=\"container\">");
        out.println("<div class=\"row\">");
        out.println("<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad\" >");
        out.println("<div class=\"panel panel-info\">");
        out.println("<div class=\"panel-heading\">");
        
        try{
           while(rs.next())
           {
             out.println("<h3 class=\"panel-title\">"+rs.getString("firstname") + "          "+ rs.getString("lastname")+"</h3>");
             out.println("<div class=\"panel-body\">");
             out.println("<div class=\" col-md-9 col-lg-9 \"> ");
             out.println("<table class=\"table table-user-information\">");
             out.println("<tbody>");
             out.println("<tr>");
             out.println("<td>Email:</td>");
             out.println("<td>"+rs.getString("email")+"</td>");
             out.println("</tr>");
             out.println("<tr>");
             out.println("<td>Gender:</td>");
             out.println("<td>"+rs.getString("gender")+"</td>");
             out.println("</tr>");   
             out.println("<tr>");
             out.println("<td>Date of Birth:</td>");
             out.println("<td>"+rs.getString("bod")+"</td>");
             out.println("</tr>");             
             
             out.println("</tbody>");
             out.println("</table>");
             out.println("</div>");
             out.println("</div>");
           }
       }
       catch(SQLException sqle)
                 {
            sqle.printStackTrace();  
        }

       /*for (int i=0;i<files.length;i++)
        {out.println("<li><a href=\"reviewMessage?file="+
                 files[i].getName().toString()+
                 "\">"+files[i].getName().toString()+"</a></li>");
        }*/
    
       out.println("</div>");
       out.println("</div>");
       out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
