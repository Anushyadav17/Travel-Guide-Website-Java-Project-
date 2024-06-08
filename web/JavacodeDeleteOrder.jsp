<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException,java.sql.SQLException " %>
<%      
        try{
            
            String orderId = request.getParameter("orderId");
            String post = request.getParameter("post");
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

            PreparedStatement st = con.prepareStatement("delete  from ordertable where bookId=?");
            st.setString(1,orderId);
            st.executeUpdate();
            con.close();
            if(post.equals("admin"))
            {
            response.sendRedirect("adminpage-vieworder.jsp");
            }
            else
            {
            response.sendRedirect("customerpage-orderdetails.jsp");
            }
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
        
%>