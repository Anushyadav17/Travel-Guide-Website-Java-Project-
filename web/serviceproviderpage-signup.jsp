<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup-BharatTour</title>
    <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
    <style>
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            background-color: rgba(225, 225, 225, 0.4);
        }
        .container
        {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 700px;
            position: relative;
            top: 70px;
        }

        .container h1 {
            color: black;
            font-family: sans-serif;
            margin: 20px;
        }

        .registartion-form {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 950px;
            color: black;
            font-size: 18px;
            font-family: sans-serif;
            padding: 20px;
            text-align: center;
        }
        label
        {
            font-size: 20px;
        }
        .registartion-form input,
        .registartion-form select,
        .registartion-form textarea {
          border: none;
         padding: 5px;
         margin-top: 10px;
         font-family: sans-serif;
         border-radius: 15px;
         width: 800px;
         height: 40px;
         font-size: 20px;
        }
        .registartion-form .submit 
        {
          width: 40%;
          padding: 8px 0;
          font-size: 20px;
          color:black;
          background-color: #6674CC;
          border-radius: 5px;
          margin: 20px;
        }
        .registartion-form .submit:hover 
        {
            transform: scale(1.1);
        }
        .post , .myacc , .logout
        {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <form name="form" class="registartion-form" method="post" >
          <table>
              <tr>
              <td><input type="text" name="post"class="post"value="sp"></td>
            </tr>
            <tr>
              <td><label for="name">Enter Service</label></td>
              <td><input type="text" name="service" placeholder="enter service"></td>
            </tr>
            <tr>
              <td><label for="name">Name</label></td>
              <td><input type="text" name="name" placeholder="enter name"></td>
            </tr>
            <tr>
              <td><label for="address">Address</label></td>
              <td><textarea name="address" id="" cols="30" rows="10" placeholder="enter address"></textarea></td>
            </tr>
            <tr>
              <td><label for="city">City</label></td>
              <td><input type="text" name="city" placeholder="enter city"></td>
            </tr>
            <tr>
                <td><label for="state">State</label></td>
                <td><input type="text" name="state" placeholder="enter state"></td>
            </tr>
            <tr>
                <td><label for="cont">Phone No</label></td>
                <td><input type="tel" name="cont" placeholder="enter phone no"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <h3>Create username and password</h3>
                </td>
            </tr>
            <tr>
                <td><label for="userId">Create Username</label></td>
                <td><input type="text" name="userId" placeholder="create username" id="un" ></td>
            </tr>
            <tr>
                <td colspan="2">
                    Note-(username should of 16 letter)
                </td>
            </tr>
            <tr>
                <td><label for="pass">Create Password</label></td>
                <td><input type="password" name="pass" placeholder="create password" id="pass"></td>
            </tr>
            <tr>
                <td colspan="2">
                    Note-(password should of 16 letter)
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="submit" value="Register" onclick="check()" /></td>
            </tr>
          </table>
        </form>
      </div>
    <%@include file="SectionAboutFooter.jsp" %>
    <%@include file="SectionHeader.jsp" %>
</body>
<script>
        function check()
        {
           let pass=document.getElementById("pass").value;
           let un=document.getElementById("un").value;
            if(un === "")
                alert("username is required");
            else if(pass === "")
                alert("password is required");
            else
            {
                document.querySelector(".registartion-form").action="JavacodeInsertServiceProvider.jsp";

            }
        }
</script>
</html>