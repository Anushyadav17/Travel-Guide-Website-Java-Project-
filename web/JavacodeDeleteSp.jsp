<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException,java.sql.SQLException " %>
<%      
        try{
            
            String username = request.getParameter("username");
            
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

            PreparedStatement st = con.prepareStatement("delete  from serviceprovidertable where username=?");
            st.setString(1,username);
            st.executeUpdate();
            con.close();
            response.sendRedirect("adminpage-viewsp.jsp");
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
        
%>