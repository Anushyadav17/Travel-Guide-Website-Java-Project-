<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet, java.util.ArrayList" %>

<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.util.UUID " %>
<%      
        try
        {
            String post = request.getParameter("post");
            String img = request.getParameter("img");
            String restoname = request.getParameter("restoname");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String charges = request.getParameter("charges");
            String restoid= request.getParameter("restoId");
            String spid = request.getParameter("spid");
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            
            
            PreparedStatement st1 = con.prepareStatement("select restaurantid from restotable where restaurantid=?");
            st1.setString(1,restoid);
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
                PreparedStatement st = con.prepareStatement("insert into restotable values(?,?,?,?,?,?,?)");
                st.setString(1,img);
                st.setString(2,restoname);
                st.setString(3,address);
                st.setString(4,city);
                st.setString(5,charges);
                st.setString(6,restoid);
                st.setString(7, spid);
                st.executeUpdate();
                con.close();
                if(post.equals("admin"))
                {
                   response.sendRedirect("adminpage-viewResto.jsp");
                }
                else
                {
                   response.sendRedirect("serviceproviderpage-home.jsp");
                }
            }  
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
%>