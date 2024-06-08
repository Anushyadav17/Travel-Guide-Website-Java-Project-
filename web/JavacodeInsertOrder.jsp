<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.util.UUID, java.sql.ResultSet, java.util.ArrayList, java.util.Date" %>
<%      
        try
        {
           String uniqueID = UUID.randomUUID().toString();
            String username = (String)session.getAttribute("CALL");
            String from = request.getParameter("from");
            String bookItem = request.getParameter("hotelName");
            String address=request.getParameter("Address");
            String fromDate = request.getParameter("fromDate");
            String toDate = request.getParameter("toDate");
            
            String from1 = "hotel";
           
            Date date=new Date();
            String date1=date.toString();
             
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            if(from.equals("resto"))
            {
               from1 = "restaurant";
               fromDate = date1;
               toDate = date1;
            }

            PreparedStatement st1 = con.prepareStatement("select address, charges, serviceproviderid from "+from+"table where "+from1+"name=?");
            st1.setString(1,bookItem);
            ResultSet rs = st1.executeQuery();
            ArrayList list1 = new ArrayList();
            ArrayList list2 = new ArrayList();
            ArrayList list3 = new ArrayList();
            while(rs.next())
            {
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
                list3.add(rs.getString(3));
            }
            String itemAddress = (String)list1.get(0);
            String itemCharges = (String)list2.get(0);
            String spid = (String)list3.get(0);
            String status = "In-process";
            
            


            PreparedStatement st = con.prepareStatement("insert into ordertable values(?,?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,uniqueID);
            st.setString(2,username);
            st.setString(3,bookItem);
            st.setString(4,address);
            st.setString(5,fromDate);
            st.setString(6,toDate);
            st.setString(7,itemAddress);
            st.setString(8,itemCharges);
            st.setString(9,status);
            st.setString(10,date1);
            st.setString(11,spid);
            st.executeUpdate();
            con.close();    

            response.sendRedirect("customerpage-orderdetails.jsp");
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            response.sendRedirect("errorpage.jsp");
        }
%>
