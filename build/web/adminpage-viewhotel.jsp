<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        
        
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        ArrayList list4 = new ArrayList();
        ArrayList list5 = new ArrayList();
        ArrayList list6 = new ArrayList();
         ArrayList list7 = new ArrayList();
        PreparedStatement st = con.prepareStatement("SELECT * FROM hoteltable");
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
        con.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminHome -BharatTour</title>
    <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
    <style>
       *
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body
        {
            background-color: rgba(225, 225, 225, 0.1);
        }
        table
        {
            font-size: 13px;
             width: 1200px;
             font-family: sans-serif;
             text-align: center;
        }
           button
           {
               padding: 5px;
               color: white;
               background-color: #6674CC;
           }
           button:hover{
               transform: scale(1.01);
           }
           #hotelform , #restoform
            {
                padding-left: 50px;
                padding-top: 0px;
            }
            #hotelform  tr td , #restoform  tr td
            {
                font-size: 20px;
            }
            #hotelform  tr td input , #restoform  tr td input 
            {
                width: 300px;
                height: 30px;
                outline: none;
            }
             #select
             {
                 width: 300px;
                height: 30px;
                outline: none;
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
    <main>
        <%@include file="SectionAdminColumn.jsp" %>
        <section class="customersection">
            <table cellspacing="15">
                <tr>
                    <th>Img Link</th>
                    <th>Hotel Name</th>
                    <th>Address</th>
                    
                    <th>City</th>
                    <th>Charges</th>
                    <th>Hotel Id</th>
                    <th>Service Provider Id</th>
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
                  <td style="display : flex; justify-content: space-between">
                      
                       <form action="JavacodeDeleteHotel.jsp">
                          <input type="text" value="<%=list6.get(i)%>" style="display: none" name="hotelId">
                           <input type="text" value="admin" style="display: none" name="post">

                          <button value="submit" style="background-color: red">Delete</button>
                      </form>
                       <button value="submit" style="background-color: green" onclick="show()">Update</button>
                  </td>
                  </tr>
                <%} %>
            </table>
            <table cellspacing="20px" id="hotelform">
                    <form action="JavacodeUpdateuser.jsp" method="post">
                     <tr style="text-align: center; font-size: 25px; font-family: sans-serif;">
                            <td colspan="2">Fill Update Details</td>
                     </tr>
                     <input type="text" name="post" style="display:none" value="hotel">
                      <input type="text" name="formadmin" style="display:none" value="admin">
                      <input type="text" name="section2" style="display:none" value="hotelId">
                      <input type="text" name="viewpage" style="display:none" value="hotel">
                     <td><label for="hotelname">Enter hotel Id</label></td>
                     <td><input type="text" name="userId"></td>
                     <tr>
                        <td><label for="select">Select the value you want to update</label></td>
                        <td>
                            <select name="section" id="select">
                                <option value="img">img</option>
                                <option value="hotelname">hotel name</option>
                                <option value="address">address</option>
                                <option value="city">City</option>
                                <option value="serviceproviderid">Service Provider</option>
                                <option value="charges">charges</option>
                          </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="hotelname">Enter Updated value</label></td>
                        <td><input type="text" name="sectionUpdate"></td>
                    <tr>
                    <tr>
                        <td><input type="reset" id="button" onclick="hide()" value="Hide"></td>
                        <td><input type="submit" id="button"></td>
                    </tr>
                    </form>
                </table>
                
        </section>
    </main>
    <%@include file="SectionAdminHeader.jsp" %>
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