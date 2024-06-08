<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        String userId = (String)session.getAttribute("CALL");
        PreparedStatement st = con.prepareStatement("select * from customertable where username=?");
        st.setString(1,userId);
        ArrayList list1 = new ArrayList();
        
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
            list3.add(rs.getString(2));
            list4.add(rs.getString(3));
            list5.add(rs.getString(4));
            list6.add(rs.getString(5));
            list7.add(rs.getString(6));
            list8.add(rs.getString(7));
        }
        con.close();

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyAccount-BharatTour</title>
    <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
    <style>
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            background-color: rgba(225, 225, 225, 0.7);
        }
        #container
        {
            display: flex;
            position: relative;
            top: 70px;
            height: 100%;
            width: 100%;
        }
        #Profilesection1
        {
            width: 20%;
            height: 600px;
            margin-top: 1px;
            text-align: center;
            background-color: #f7f8fc;
        }
        
        #Profilesection1 img
        {
            height: 120px;
            width: 120px;
            border-radius: 80px;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        #Profilesection1 ol
        {
            list-style: none;
           display: flex;
           flex-direction: column;
           gap: 20px;
           margin: 10px;
           margin-top: 20px;
           width: 240px;
        }
        #Profilesection1 ol li a
        {
           list-style: none;
           text-decoration: none;
           color: black;
           font-size: 25px;
        }
        #Profilesection1 ol li:hover
        {
            transform: scale(1.2);
            border: 1px solid black;
        }
        #Profilesection2
        {
            width: 75%;
            height: 100%;
            margin-left: 30px;
            margin-top: 10px;
        }
        #profile2about
        {
            width: 100%;
            height: 350px;
            background-color: white;
            margin-bottom: 20px;
        }
        #profile2edit
        {
            width: 100%;
            height: 200px;
            background-color: white;
        }
        .table
        {
          margin: 10px;
          font-size: 23px;
          margin-left:30px;
        }
        form
        {
          margin: 20px;
        }
        input
        {
          width: 400px;
          font-size: 20px;
          outline: none;
        }
        label
        {
          font-size: 20px;
        }
        #hide
        {
          display: none;
        }
        .submit 
        {
          width: 100px;
          padding: 2px;
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
    <%@include file="SectionHeader.jsp" %>
    <div id="container">
        <div id="Profilesection1">
            <img src="images/profilephoto.jpg" alt="click here">
            <ol>
                <li><a href="customerpage-home.jsp">Home</a></li>
                <li><a href="#home">Add image</a></li>
                <li><a href="feedbackpage.jsp">Feedback</a></li>
                <li><a href="customerpage-orderdetails.jsp">Order Details</a></li>
                <li><a href="destroysession.jsp">Logout</a></li>
            </ol>
        </div>
        <div id="Profilesection2">
            <div id="profile2about">
                <h2 style="margin-left:40px; font-size:30px">About</h2>
                <table class="table" cellspacing="10">
                  <tr>
                      <td>Name :- </td>
                      <td><%=list1.get(0)%></td>
                  </tr>
                 
                  <tr>
                    <td>Address :- </td>
                    <td><%=list3.get(0)%></td>
                  </tr>
                  <tr>
                    <td>City :- </td>
                    <td><%=list4.get(0)%></td>
                  </tr>
                  <tr>
                    <td>State :- </td>
                    <td><%=list5.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Phone Number :- </td>
                    <td><%=list6.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Username :- </td>
                    <td><%=list7.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Password :- </td>
                    <td><%=list8.get(0)%></td>
                  </tr>
                  
                </table>
                 
            </div>
            <div id="profile2edit">
                <h2 style="margin-left:40px; font-size:30px">Edit</h2>
                <form action="JavacodeUpdateuser.jsp" method="post">
                  <input type="text" name="post" placeholder="username" value="customer" id="hide">
                  <input type="text" placeholder="username" name="formadmin" value="customer" id="hide">
                  <input type="text" name="userId" placeholder="username" id="hide" value="<%=session.getAttribute("CALL") %>">
                  <label for="userId">Enter the content you want to update :- </label>
                  <select name="section" id="select">
                                <option value="name">Name</option>
                                <option value="city">City</option>
                                <option value="state">State</option>
                                <option value="phoneno">Contact</option>
                                <option value="password">Password</option>
                  </select><br><br>
                  <label for="userId">Enter updated content :- </label>
                  <input type="text" name="sectionUpdate" placeholder="update content"><br><br>
                  <input type="submit"  value="submit" class="submit">
                </form>
            </div>
        </div>
    </div>
</body>
<script>
        document.querySelector(".myacc").style.display = "none";
        document.querySelector(".logout").style.display = "none";
        document.querySelector(".signup").style.display = "none";
    </script>
</html>