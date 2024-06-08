<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet, java.util.ArrayList" %>
<%      
        try
        {
            String post = request.getParameter("post");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String cont =request.getParameter("cont"); 
            String userId = request.getParameter("userId");
            String pass = request.getParameter("pass");
         
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            
            PreparedStatement st1 = con.prepareStatement("select username from customertable where username=?");
            st1.setString(1,userId);
            ResultSet rs = st1.executeQuery();
            ArrayList list = new ArrayList();
            while(rs.next())
            {
            list.add(rs.getString(1));
            }
            int abc = list.size();
            if(abc !=0)
            {
               response.sendRedirect("alreadyexitspage.jsp");
            }
            else
            {
                PreparedStatement st = con.prepareStatement("insert into customertable values(?,?,?,?,?,?,?)");
                st.setString(1,name);
                st.setString(2,address);
                st.setString(3,city);
                st.setString(4,state);
                st.setString(5,cont);
                 st.setString(6,userId);
                st.setString(7,pass);
                st.executeUpdate();
                con.close();
                if(post.equals("customer"))
                {
                   session.setAttribute("CALL", userId);
                   response.sendRedirect("customerpage-home.jsp");
                }
                else if(post.equals("admin"))
                {
                   response.sendRedirect("adminpage-viewcustomer.jsp");
                }
           }
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
%>