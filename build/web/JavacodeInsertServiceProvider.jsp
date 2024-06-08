<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet, java.util.ArrayList" %>

<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        try
        {
        String post = request.getParameter("post");
        String service = request.getParameter("service");
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
                 PreparedStatement st = con.prepareStatement("insert into serviceprovidertable values(?,?,?,?,?,?,?,?)");
         st.setString(1,service);
        st.setString(2,name);
        st.setString(3,address);
        st.setString(4,city);
        st.setString(5,state);
        st.setString(6,cont);
         st.setString(7,userId);
        st.setString(8,pass);
        st.executeUpdate();
        con.close();
         if(post.equals("sp"))
        {
            session.setAttribute("SP", userId);
            response.sendRedirect("serviceproviderpage-home.jsp");
        }
        else if(post.equals("admin"))
        {
           response.sendRedirect("adminpage-viewsp.jsp");
        }
   }
   
}
catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
%>