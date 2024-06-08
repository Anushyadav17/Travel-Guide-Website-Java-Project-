<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String post = request.getParameter("post");
        String formadmin = request.getParameter("formadmin");
        String viewpage = request.getParameter("viewpage");
        String userId = request.getParameter("userId");
        String section = request.getParameter("section");
        String section2 = request.getParameter("section2");
        String sectionUpdate = request.getParameter("sectionUpdate");
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        
        PreparedStatement st = con.prepareStatement("update "+post+"table set "+section+"=? where "+section2+"=? ");
        st.setString(1,sectionUpdate);
        st.setString(2,userId);
         st.executeUpdate();
        if(formadmin.equals("admin"))
        {
           response.sendRedirect("adminpage-view"+viewpage+".jsp");
        }
        else if(formadmin.equals("customer"))
        {
           response.sendRedirect("customerpage-myaccount.jsp");
        }
        else if(formadmin.equals("serviceprovider"))
        {
           response.sendRedirect("serviceproviderpage-customerbooking.jsp");
        }
%>