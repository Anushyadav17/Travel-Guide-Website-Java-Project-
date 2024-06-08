<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException,java.sql.SQLException " %>
<%      
        try{
            
            String hotelId = request.getParameter("hotelId");
            String post = request.getParameter("post");
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

            PreparedStatement st = con.prepareStatement("delete  from hoteltable where hotelId=?");
            st.setString(1,hotelId);
            st.executeUpdate();
            con.close();
            if(post.equals("admin"))
            {
            response.sendRedirect("adminpage-viewhotel.jsp");
            }
            else
            {
            response.sendRedirect("serviceproviderhome.jsp");
            }
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
        
%>