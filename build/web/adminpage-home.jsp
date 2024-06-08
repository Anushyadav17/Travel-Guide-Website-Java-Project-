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
        
        PreparedStatement st1 = con.prepareStatement("SELECT COUNT(*) FROM customertable");
        ResultSet rs1 = st1.executeQuery();
        while(rs1.next())
        {
            list1.add(rs1.getString(1));
        }
        String item1 = (String)list1.get(0);
        
        
        PreparedStatement st2 = con.prepareStatement("SELECT COUNT(*) FROM hoteltable");
        ResultSet rs2 = st2.executeQuery();
        while(rs2.next())
        {
            list2.add(rs2.getString(1));
        }
        String item2 = (String)list2.get(0);
        
        
        PreparedStatement st3 = con.prepareStatement("SELECT COUNT(*) FROM restotable");
        ResultSet rs3 = st3.executeQuery();
        while(rs3.next())
        {
            list3.add(rs3.getString(1));
        }
        String item3 = (String)list3.get(0);
        
        
        
        PreparedStatement st4 = con.prepareStatement("SELECT COUNT(*) FROM ordertable");
        ResultSet rs4 = st4.executeQuery();
        while(rs4.next())
        {
            list4.add(rs4.getString(1));
        }
        String item4 = (String)list4.get(0);
        
        
        
        PreparedStatement st5 = con.prepareStatement("SELECT COUNT(*) FROM serviceprovidertable");
        ResultSet rs5 = st5.executeQuery();
        while(rs5.next())
        {
            list5.add(rs5.getString(1));
        }
        String item5 = (String)list5.get(0);
        
        
        PreparedStatement st6 = con.prepareStatement("SELECT COUNT(*) FROM feedbacktable");
        ResultSet rs6 = st6.executeQuery();
        while(rs6.next())
        {
            list6.add(rs6.getString(1));
        }
        String item6 = (String)list6.get(0);
        
        
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
            background-color: rgba(225, 225, 225, 0.3);
        }
        .customersection table tr th
        {
            font-size: 20px;
            text-align: center;
            width: 200px;
            background-color: white;
        }
        .customersection table tr td
        {
            font-size: 15px;
            text-align: center;
            width: 200px;
            background-color: white;
            padding: 5px;
        }
        table
        {
            position: relative;
            left: 100px;
            font-size: 80px;
        }
        .customersection table tr td
        {
            font-size: 30px;
            height: 170px;
            width: 300px;
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <main>
        <%@include file="SectionAdminColumn.jsp" %>
        <section class="customersection">
            <table cellspacing="40">
                <tr>
                    <td style="background-color: #4DA3FF">Total Customer <br><%=item1%></td>
                    <td style="background-color: #FFE6AC">Total Hotel <br><%=item2%></td>
                    <td style="background-color: #E7D1FC">Total Restorants <br><%=item3%></td>
                </tr>
                <tr>
                    <td style="background-color: #E7D1FC">Total Orders <br><%=item4%></td>
                    <td style="background-color: #4DA3FF">Total Service Provider <br><%=item5%></td>
                    <td style="background-color: #FFE6AC">Total Feedback <br><%=item6%></td>
                </tr>
            </table>
        </section>
    </main>
    <%@include file="SectionAdminHeader.jsp" %>
</body>
</html>