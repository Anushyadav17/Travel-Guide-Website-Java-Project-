<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        String btn1=request.getParameter("btn1");
        String btn2=request.getParameter("btn2");
        String addbtn=request.getParameter("addbtn");
          ArrayList list1 = new ArrayList();
          ArrayList list2 = new ArrayList();
          ArrayList list3 = new ArrayList();
          ArrayList list4 = new ArrayList();
          ArrayList list5 = new ArrayList();
          ArrayList list6 = new ArrayList();
        if(btn1 !=null)
        {
            String city =request.getParameter("city");
            PreparedStatement st = con.prepareStatement("select * from hoteltable where city=?");
            st.setString(1,city);
            ResultSet rs = st.executeQuery();
            while(rs.next()) 
            {
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
                list3.add(rs.getString(3));
                list4.add(rs.getString(4));
                list5.add(rs.getString(5));
                list6.add(rs.getString(6));
            }
            con.close();
        }
        else if(btn2 != null)
        {
          String hotelname =request.getParameter("hotelname");
          PreparedStatement st = con.prepareStatement("select * from hoteltable where hotelname=?");
          st.setString(1,hotelname);
          ResultSet rs = st.executeQuery();
          while(rs.next())
          {
              list1.add(rs.getString(1));
              list2.add(rs.getString(2));
              list3.add(rs.getString(3));
              list4.add(rs.getString(4));
              list5.add(rs.getString(5));
              list6.add(rs.getString(6));
          }
          con.close();
        }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel-BharatTour</title>
  <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
  <style>
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            background-color: rgba(225, 225, 225, 0.3);
            display: flex;
            justify-content: space-between;
            overflow-x: hidden;
        }
        section
        {
            position: relative;
            top: 70px;
            left:280px;
        }
        .ar1
        {
            margin: 20px;
            width: 1000px;
            height: 256px;
            background-color: white;
            display: flex;
            box-shadow: rgba(157, 157, 157, 0.2) 0px 2px 2px;
            position: relative;
            left: 180px;
        }
        .ar1 img
        {
            height: 100%;
            width: 300px;
        }
        .ar1 div
        {
            height: 100%;
            width: 650px;
            padding: 20px;
            padding-top: 5px;
            font-family: sans-serif;
        }
        .ar1 table
        {
          font-size: 18px;
        }
        .ar1 input
        {
          padding: 10px;
          background-color: blue;
          color: white;
          border: none;
          border-radius: 10px;
          box-shadow: rgba(157, 157, 157, 0.2) 7px 7px 7px;
        }
        .ar1 input:hover
        {
          transform: scale(1.05);
        }
        #fixeddiv
        {
            width: 330px;
            height: 400px;
            background-color: white;
            margin: 20px;
            margin-left: 60px;
            position: fixed;
            top: 70px;
            box-shadow: rgba(157, 157, 157, 0.2) 5px 5px 5px;
            padding: 30px;
            font-family: sans-serif;
        }
        #searchboxheader p{
              font-size: 27px;
              font-family: sans-serif;
              color: #6674CC;
              text-shadow: rgba(157, 157, 157, 0.2) 2px 2px;
            }
          #fixeddiv form
          {
            padding: 20px;
          }
          #fixeddiv input
          {
            outline: none;
            border: none;
            border-bottom: 1px solid gray;
            font-size: 17px;
            margin-top: 10px;
          }
          #fixeddiv label
          {
            font-size: 20px;
          }
          #p1
          {
            font-size: 20px;
            margin: 10px;
          }
        .submit 
        {
          width: 40%;
          padding: 4px 0;
          font-size: 20px;
          color:white;
          background-color: #6674CC;
          border-radius: 5px;
          margin: 20px;
        }
        .submit:hover
        {
          transform: scale(1.1);
        }
    </style>
</head>
<body>
     <div id="fixeddiv">
        <div id="searchboxheader">
                <p>Explore Services on Click!</p>
         </div><hr>
         <p id="p1">Search hotel by city name :-</p>
         <form method="post"> 
            <label for="city">Enter city name</label><br>
            <input type="text" placeholder="city name" name="city">
            <input type="submit" value="Search" class="submit" name="btn1">
         </form>
         <p id="p1">Search hotel by hotel name :-</p>
         <form method="post">
            <label for="hotelname">Enter hotel name</label><br>
             <input type="text" placeholder="hotel name" name="hotelname">
             <input type="submit" value="Search" class="submit" name="btn2">
         </form>
    </div>
    <section class="indoreplace">
       <%for(int i=0;i<list1.size();i++)
                    { %>
        <article class="ar1">
            <img src="images/<%=list1.get(i) %>" alt="click here">
            <div>
             <h1 style="margin-bottom: 5px; font-size: 24px;"><%=list2.get(i)%></h1>
             <table cellspacing="10">
               <tr>
                <td>Address:- </td>
                <td><%=list3.get(i)%></td>
              </tr>
              <tr>
                  
                <td>City:- </td>
                <td><%=list4.get(i)%></td>
              </tr>
              <tr>
                <td>Charges:-</td>
                <td><%=list5.get(i)%></td>
              </tr>
             </table><br>
             <form action="book.jsp">
                 <input type="text" value="<%=list2.get(i)%>" style="display: none;" name="hotelName">
                 <input type="text" value="hotel" style="display: none;" name="from">
                 <button class="submit">Book</button>
             </form>
            </div>
          </article>
          <%} %>
    </section>
    <%@include file="SectionHeader.jsp" %>
</body>
</html>