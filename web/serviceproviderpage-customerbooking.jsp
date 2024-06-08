<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        String spid = (String)session.getAttribute("CALL");
        PreparedStatement st = con.prepareStatement("select * from ordertable where spid=?");
        st.setString(1,spid);
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
        <title>myservice-bharattour</title>
        <style>
            *
            {
                margin: 0px;
                padding: 0px;
            }
            body
            {
                overflow-x: hidden;
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
               background-color: green;
           }
           button:hover{
               transform: scale(1.01);
           }
           #button
            {
                font-size: 20px;
                box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 5px;
                text-align: center;
                text-decoration: none;
                background-color: #6674CC;
                color: white;
                outline: none;
                border: none; 
                border-radius: 10px;
                width: 100px; 
            }
        </style>
    </head>
    <body>
        <table cellspacing="20">
            <h2>Customer Booking Details - </h2>
                <tr>
                    <th>Booking Id</th>
                    <th>Book Item Name</th>
                    <th>from Date</th>
                    
                    <th>To Date</th>
                    <th>Address</th>
                    <th>Charges</th>
                    <th>Status</th>
                    <th>Update Status</th>
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
                      <button value="submit" style="background-color: green" onclick="show()">Update</button>
                  </td>
                  </tr>
                <%} %>
            </table>
            <table cellspacing="20px" id="hotelform" style="position: relative; left: 400px">
                    <form action="JavacodeUpdateuser.jsp" method="post">
                     <tr style="text-align: center; font-size: 25px; font-family: sans-serif;">
                            <td colspan="2">Fill Update Details</td>
                     </tr>
                     <input type="text" name="post" style="display:none" value="order">
                      <input type="text" name="formadmin" style="display:none" value="serviceprovider">
                      <input type="text" name="section2" style="display:none" value="bookId">
                      <input type="text" name="viewpage" style="display:none" value="order">
                     <td><label for="hotelname">Enter booking Id</label></td>
                     <td><input type="text" name="userId"></td>
                     
                        <td>
                            <input type="text" name="section" value="status" style="display:none;">
                        </td>
                    
                    <tr>
                        <td><label for="hotelname">Enter Updated Status</label></td>
                        <td><input type="text" name="sectionUpdate"></td>
                    <tr>
                    <tr>
                        <td><input type="reset" id="button" onclick="hide()" value="Hide"></td>
                        <td><input type="submit" id="button"></td>
                    </tr>
                    </form>
                </table>
        <%@include file="SectionHeaderSp.jsp" %>
    </body>
   <script>
    document.querySelector("#hotelform").style.display = "none";
    function show()
    {
       document.querySelector("#hotelform").style.display = "block";
    }
    function hide()
    {
        document.querySelector("#hotelform").style.display = "none";
    }
 </script>
</html>
