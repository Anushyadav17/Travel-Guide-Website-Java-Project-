<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%
     int result=0;
    String button1=request.getParameter("btn1");
    if(button1!=null && button1.equals("Login"))
    {
      String userId=request.getParameter("userId");
      String pass=request.getParameter("pass");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
      PreparedStatement st=con.prepareStatement("select * from  serviceprovidertable  where username=? and password=?");
      st.setString(1,userId);
      st.setString(2,pass);
      ResultSet rs=st.executeQuery();
      if(rs.next())
      {
         session.setAttribute("CALL", userId);
         response.sendRedirect("serviceproviderpage-home.jsp");
      }
      else
      {
         result=1;  
      }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AuthorityLogin-BharatTour</title>
        <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
    </head>
    <style>
        body
        {
            overflow: hidden;
            background-color: rgba(225, 225, 225, 0.4);
        }
        .body
        {
          overflow: hidden;
          margin: 0px;
          padding: 0px;
          font-family: 'Prosto One', cursive;
          position: absolute;
          top: 0;
          width: 100%;
          height: 100%;
        }
        #login-form
        {
          color: #777;
          border: 0px solid #afafaf;
          width: 30%;
          margin-left: 35%;
          margin-top: 200px;
          text-align: center;
          padding: 40px;
          padding-top: 20px;
          border-radius: 3px;
          box-shadow: 0px 0px 8px #777;
          background: rgba(255, 255, 255, 1);
        }
        input
        {
          color: #777;
          font-weight: bold;
          width: 70%;
          padding: 10px;
          margin: 10px;
          border: 1px solid #afafaf;
          border-radius: 3px;
          background: rgba(255, 255, 255, 0.5);
          outline: none;
        }
        input[type="button"]
        {
          color: white;
          width: 30%;
          border: 0px solid transparent;
          outline: none;
          cursor: pointer;
        }
        .login
        {
          background: #51AC74;
        }
        .hide
        {
          background: #51AC74;
        }
        button
        {
          border: none;
          background-color: #6674CC;
          border-radius: 10px;
          height: 32px;
          display: flex;
          align-items: center;
          padding: 4px 20px;
          color: white;
          text-decoration: none;
          line-height: 24px;
          text-align: center;
          font-size: 25px;
        }
        .login:hover
        {
            transform: scale(1.1);
        }
        .hide:hover
        {
            transform: scale(1.1);
        }
    </style>
    <body>
        <section class="body">
           <form id="login-form" method="post">
               <h3>Login</h3>
                <br>
                <input type="text" name="userId" placeholder="Username"/>
                <br>
                <input type="password" name="pass" placeholder="Password" />
                <div class="signup_link">
                    Not a Member ? <a href="serviceproviderpage-signup.jsp">Signup</a>
                </div>
                <br>
                <%
                 if(button1!=null &&  result==1)
                 {%>
                    <div class="signup_link" style="color: red;">Invalid Username/Password</div>
              <%}%>
                <input name="btn1" type="Submit" class="login" value="Login" style="color: white; width: 120px"/>
            </form>   
         </section>
    </body>
</html>
