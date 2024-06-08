<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        String username = (String)session.getAttribute("CALL");
        PreparedStatement st = con.prepareStatement("select * from ordertable where username=?");
        st.setString(1, username);
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        ArrayList list4 = new ArrayList();
        ArrayList list5 = new ArrayList();
        ArrayList list6 = new ArrayList();
        ArrayList list7 = new ArrayList();
        ArrayList list8 = new ArrayList();
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(3));
            list3.add(rs.getString(5));
            list4.add(rs.getString(6));
            list5.add(rs.getString(7));
            list6.add(rs.getString(8));
            list7.add(rs.getString(9));
            list8.add(rs.getString(10));
        }
        con.close();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OrderDetails-BharatTour</title>
         <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
        <style>
            *
            {
                margin: 0px;
                padding: 0px;
            }
            table
            {
                position: relative;
                top: 80px;
                font-family: sans-serif;
                width: 1275px;
            }
/*            table tr td, table tr td
            {
                width: 200px;
            }*/
           h2
           {
               position: relative;
                top: 80px;
               
                margin: 10px;
                margin-left: 20px;
           }
           button
           {
               padding: 5px;
               color: white;
               background-color: rgba(248, 0, 0, 0.9)
           }
           button:hover{
               transform: scale(1.01);
           }
        </style>
    </head>
    <body>
        <table cellspacing="20">
            <h2>Booking Details - </h2>
                <tr>
                    <th>Date</th>
                    <th>Booking ID</th>
                    <th>Book Item</th>
                    <th>From Date</th>
                    <th>To Date</th>
                    <th>Address</th>
                    <th>Charges</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%for(int i=0;i<list1.size();i++)
                    { %>
                    <tr>
                        <td><%=list8.get(i)%></td>
                  <td><%=list1.get(i)%></td>
                  <td><%=list2.get(i)%></td>
                  <td><%=list3.get(i)%></td>
                  <td><%=list4.get(i)%></td>
                  <td><%=list5.get(i)%></td>
                  <td><%=list6.get(i)%></td>
                  <td><%=list7.get(i)%></td>
                  <td>
                      <form action="JavacodeDeleteOrder.jsp">
                          <input type="text" value="<%=list1.get(i)%>" style="display: none" name="orderId">
                          <input type="text" value="customer" style="display: none" name="post">
                          <button value="submit">cancel</button>
                      </form>
                  </td>
                  </tr>
                <%} %>
            </table>
        <%@include file="SectionHeader.jsp" %>
    </body>
</html>
