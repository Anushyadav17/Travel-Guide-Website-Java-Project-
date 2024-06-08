<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        String spid = (String)session.getAttribute("CALL");
        PreparedStatement st = con.prepareStatement("select * from hoteltable where serviceproviderid=?");
        st.setString(1,spid);
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        ArrayList list4 = new ArrayList();
        ArrayList list5 = new ArrayList();
        ArrayList list6 = new ArrayList();
        ArrayList list7 = new ArrayList();
        
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
            list7.add(rs.getString(7));
        }
        
        
        PreparedStatement st1 = con.prepareStatement("select * from restotable where serviceproviderid=?");
        st1.setString(1, spid);
        ArrayList list8 = new ArrayList();
        ArrayList list9 = new ArrayList();
        ArrayList list10 = new ArrayList();
        ArrayList list11= new ArrayList();
        ArrayList list12= new ArrayList();
        ArrayList list13 = new ArrayList();
        ArrayList list14= new ArrayList();
        
        
        ResultSet rs1 = st1.executeQuery();
        while(rs1.next())
        {
            list8.add(rs1.getString(1));
            list9.add(rs1.getString(2));
            list10.add(rs1.getString(3));
            list11.add(rs1.getString(4));
            list12.add(rs1.getString(5));
            list13.add(rs1.getString(6));
            list14.add(rs1.getString(7));
        }
        con.close();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>myservice-bharattour</title>
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
            <h2>Your added hotel Details - </h2>
                <tr>
                    <th>Img Link</th>
                    <th>Hotel Name</th>
                    <th>Address</th>
                    
                    <th>City</th>
                    <th>Charges</th>
                    <th>Hotel Id</th>
                    <th>Your Id</th>
                    <th>Action</th>
                </tr>
                <%for(int i=0;i<list1.size();i++)
                    { %>
                    <tr>
                        
                  <td><%=list1.get(i)%></td>
                  <td><%=list2.get(i)%></td>
                  <td><%=list3.get(i)%></td>
                  <td><%=list4.get(i)%></td>
                  <td><%=list5.get(i)%></td>
                  <td><%=list6.get(i)%></td>
                  <td><%=list7.get(i)%></td>
                  <td>
                      <form action="JavacodeDeleteHotel.jsp">
                          <input type="text" value="<%=list6.get(i)%>" style="display: none" name="hotelId">
                          <input type="text" value="customer" style="display: none" name="post">
                          <button value="submit">cancel</button>
                      </form>
                  </td>
                  </tr>
                <%} %>
            </table>
            <table cellspacing="20">
            <h2>Your added restaurants Details - </h2>
                <tr>
                    <th>Img Link</th>
                    <th>Restaurants Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Charges</th>
                    <th>Hotel Id</th>
                    <th>Your Id</th>
                    <th>Action</th>
                </tr>
                <%for(int i=0;i<list8.size();i++)
                    { %>
                    <tr>
                        
                  <td><%=list8.get(i)%></td>
                  <td><%=list9.get(i)%></td>
                  <td><%=list10.get(i)%></td>
                  <td><%=list11.get(i)%></td>
                  <td><%=list12.get(i)%></td>
                  <td><%=list13.get(i)%></td>
                  <td><%=list14.get(i)%></td>
                  <td>
                      <form action="JavacodeDeleteResto.jsp">
                          <input type="text" value="<%=list13.get(i)%>" style="display: none" name="restoId">
                          <input type="text" value="customer" style="display: none" name="post">
                          <button value="submit">cancel</button>
                      </form>
                  </td>
                  </tr>
                <%} %>
            </table>
        <%@include file="SectionHeaderSp.jsp" %>
    </body>
</html>
