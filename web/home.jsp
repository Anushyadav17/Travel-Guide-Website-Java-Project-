
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home-BharatTour</title>
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
            overflow-x: hidden;
        }
        .header
        {
            width: 100%;
            height: 95px;
            color: transparent;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            position: absolute;
            top: 0;
        }
        .logo
        {
            display: flex;
            height: 100%;
            width: 300px;
            align-items: center;
        }
        .logo img
        {
            width: 100px;
            height: 100px;
            background-color: transparent;
        }
        .logo p{
            font-size: 18px;
            text-shadow: 1px 1px;
            color: black;
        }
        .otherItem
        {
            display: flex;
            align-items: center;
        }
        .otherItem ol{
            list-style: none;
            display: flex;
            flex-direction: row;
            gap: 20px;
        }
        
        .otherItem ol li a
        {
            color: black;
           text-decoration: none;
           text-align: center;
           font-size: 27px;
           font-weight: 600;
        }
        .otherItem li:hover
        {
            transform: scale(1.2);
        }
        .signup
        {
            background-color: #6674CC;
            border-radius: 10px;
            height: 32px;
            display: flex;
            align-items: center;
            padding: 4px 20px;
        }
        .signup:hover
        {
            transform: scale(1.02);
        }
        .signup a
        {
            color: white;
           text-decoration: none;
           line-height: 24px;
           text-align: center;
           font-size: 25px;
        }
        .section1
        {
            width: 100%;
            height: 550px;
        }
        .section1 img
        {
            height: 550px;
            width: 100%;
            position: absolute;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px ;
            box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 10px;
        }
        .section2
        {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .section2 h1
        {
            font-size: 60px;
            color: #6674CC;
            text-align: center;
        }
        .section3
        {
           height: 950px;
           width: 90%;
           border-radius: 20px;
           margin: 50px;
           display: flex;
           flex-direction: column;
           margin-bottom: 0px;
        }
        .section3 table td
        {
            width: 300px;
            height: 350px;
            text-align: center;
            padding: 20px;
        }
        .section3 table td img
        {
            width: 250px;
            height: 280px;
            border-radius: 10px;
            margin: 20px;
        }
        .section3 table td img:hover
        {
            transform: scale(1.1);
        }
        .section4
        {
           height: 600px;
           width: 90%;
           border-radius: 20px;
           margin: 50px;
           display: flex;
           flex-direction: column;
           margin-bottom: 0px;
        }
        .section4 table td
        {
            width: 300px;
            height: 350px;
            text-align: center;
            padding: 20px;
        }
        .section4 table td img
        {
            width: 300px;
            height: 300px;
            border-radius: 10px;
            margin: 20px;
        }
        .section4 table td img:hover
        {
            transform: scale(1.1);
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
          color: rgb(255 255 255);
        }
        button:hover
        {
            transform: scale(1.2);
        }
    </style>
</head>
<body>
    <section class="section1">
         <img src="images/Banner-1.jpg" alt="Click here"> 
    </section>
    <header class="header">
        <div class="logo">
            <img src="images/logo.png" alt="here">
            <p><i><b>Bharat Tour</b></i></p>
        </div>
        <div class="otherItem">
            <ol>
                <li>
                    <a href="#aboutSection">About</a>
                </li>
                <li>
                    <a href="#footer">Contact</a>
                </li>
                <li>
                    <a href="feedbackpage.jsp">Feedback</a>
                </li>
                <li>
                    <a href="serviceproviderpage-login.jsp">Service Provider</a>
                </li>
            </ol>
        </div>
        <div class="signup">
            <a href="homepage-signup.jsp">Create Account</a>
         </div>
        <button  onclick="showuser()">Login</button>
    </header>
    <section class="section2">
        <h1>Make Your Trip<br>With<br>Your Loved Once's</h1>
        <img style="width: 400px;"
        src="images/plane.gif" alt="click">
    </section>
    <%@include file="SectionLoginPage.jsp" %>
    <section class="section3">
        <h1 style="text-align: center; font-size: 40px; margin: 5px;">Explore Best Places !</h1>
         <table style="margin: 30px; margin-bottom: 0; margin-top: 10px;">
            <tr>
                <td>
                    <img src="images/6143.jpg" alt="click here">
                    <h2>Goa beaches</h2>
                </td>
                <td>
                    <img src="images/U6Hoqd.webp" alt="click here">
                    <h2>Delhi</h2>
                </td>
                <td>
                    <img src="images/golden-temple-amritsar-punjab.jpg" alt="click here">
                    <h2>The Golden Temple</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="images/desktop-wallpaper-brihadeeswarar-temple-thanjavur-india-brihadeeswara-temple-thumbnail.jpg" alt="click here">
                    <h2>The Brihadeeswarar Temple</h2>
                </td>
                <td>
                    <img src="images/pexels-mayur-sable-11750442.jpg" alt="click here">
                    <h2>The Amber Fort</h2>
                </td>
                <td>
                    <img src="images/eu4ergxy2udcad6dnrus.jpg" alt="click here">
                    <h2>The City Place</h2>
                </td>
            </tr>
         </table>
    </section>
    <%@include file="SectionAboutFooter.jsp" %>
</body>
<script>
    document.querySelector(".body").style.display = "none";
    function showuser()
    {
       document.querySelector(".body").style.display = "block";
    }
    function hideuser()
    {
        document.querySelector(".body").style.display = "none";
    }
 </script>
</html>