<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        
        
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        
        PreparedStatement st = con.prepareStatement("SELECT * FROM feedbacktable");
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
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
    </style>
</head>
<body>
    <main>
        <%@include file="SectionAdminColumn.jsp" %>
        <section class="customersection">
            <table cellspacing="20">
                <tr>
                    <th>Username</th>
                    <th>Name</th>
                    <th>Feedback</th>
                    
                </tr>
                <%for(int i=0;i<list1.size();i++)
                    { %>
                    <tr>
                        <td><%=list1.get(i)%></td>
                  <td><%=list2.get(i)%></td>
                  <td><%=list3.get(i)%></td>
                  </tr>
                <%} %>
            </table>
        </section>
    </main>
    <%@include file="SectionAdminHeader.jsp" %>
</body>
</html>