<%@include file="security.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main-BharatTour</title>
        <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
        <style>
            *
            {
                margin: 0;
                padding: 0;
            }
            body
            {
                background-color: rgba(225, 225, 225, 0.2);
            }
            .searchbox
            {
                 position: fixed;
                 background-color: white;
                 border-radius: 5px;
                 width: 430px;
                 height: 570px;
                 margin: 30px;
                 margin-left: 130px;
                 box-shadow: rgba(157, 157, 157, 0.2) 0px 5px 5px;
            }
            #searchboxheader
            {
              margin-top: 10px;
              display: flex;
              width: 100%;
              height: 70px;
              display: flex;
              justify-content: center;
              align-items: center;
              font-family: sans-serif;
            }
            #searchboxheader p
            {
              font-size: 24px;
              font-family: sans-serif;
              color: #6674CC;
              text-shadow: rgba(157, 157, 157, 0.2) 2px 2px;
            }
            #searchboxcontent1 img
            {
              width: 150px;
              height: 130px;
            }
            #searchboxcontent1
            {
              display: flex;
              margin: 40px;
              margin-top: 10px;
            }
            #searchboxcontent1 button
            {
              border: none;
              font-size: 20px;
              background-color: transparent;
              position: relative;
              left: 35px;
            }
            #searchboxcontent1 div:hover , #searchbox div:hover
            {
              transform: scale(1.1);
            }
            main
            {
              width: 100%;
              height: 100%;
              position: relative;
              top: 70px;
            }
            .maindiv
            {
              position: relative;
              height: 100%;
              width: 850px;
              float: right;
              margin-top: 30px;
              margin-right: 70px;
            }
            #maindivimg1
            {
               width:100%;
               height: 130px;
              box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 5px;
            }
            #maindivcontent2
            {
              border-radius: 5px;
              padding: 10px;
              margin-top: 10px;
              text-align: center;
            }
            #maindivcontent2 div
            {
              display: flex;
              justify-content: center;
              gap: 50px;
              margin-top: 20px;
            }
            #maindivcontent2 a
            {
              font-size: 18px;
              box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 5px;
              text-align: center;
              text-decoration: none;
              background-color: #6674CC;
              color: white;
              padding: 10px;
              border-radius: 10px;
              margin-bottom: 15px;
            }
            #maindivcontent2 a:hover
            {
              transform: scale(1.02);
            }
            #maindivcontent3
            {
              width: 840px;
              padding: 5px;
              margin-top: 15px;
              font-size: 17px;
              height: 350px;
            }
            #maindivcontent3 table tr td p
            {
              width: 135px;
              text-align: center;
            }
            #maindivcontent3 table tr td img
            {
              width: 160px;
              height: 180px;
              border-radius: 5px;
            }
            #maindivcontent3 table tr td
            {
              border: 20px solid transparent;
            }
            #maindivcontent3 a
            {
              position: relative;
              top: 5px;
              left: 650px;
              font-size: 16px;
              background-color: #6674CC;
              color: white;
              text-decoration: none;
              font-family: sans-serif;
              padding: 12px 15px;
              border-radius: 10px;
              width: 157px;
              height: 50px;
            }
        </style>
    </head>
    <body>
       <main>
           <div class="searchbox">
              <div id="searchboxheader">
                <p>Explore Services on Click!</p>
              </div><hr>
              <div id="searchboxcontent1">
                <div>
                  <a href="customerpage-place.jsp">
                    <img src="images/locationlogo.png" alt="">
                    <button>Place</button>
                  </a>
                 </div>
                 <div>
                  <a href="customerpage-hotel.jsp">
                    <img src="images/hotellogo.png" alt="">
                    <button>Hotels</button>
                  </a>
                 </div>
              </div>
              <div id="searchboxcontent1">
                <div>
                  <a href="customerpage-restaurants.jsp">
                    <img src="images/restorantlogo.png" alt="">
                    <button>Restaurants</button>
                  </a>
                 </div>
                 <div>
                  <a href="errorpage.jsp">
                    <img src="images/transpotlogo.png" alt="">
                    <button>Transport</button>
                  </a>
                 </div>
              </div>
            </div>
           <div class="maindiv">
              <img src="images/header-banner.jpg" alt="click here" id="maindivimg1">
              
              <div id="maindivcontent3">
                <p style="font-size: 25px; font-family: sans-serif; ">Explore Some Local  attraction, Famous spots, Garderns, Hill Stations and More....</p>
                <table>
                  <tr>
                    <td><img src="images/vanaras_img.webp" alt=""><p>Varanasi</p></td>
                    <td><img src="images/ladakh_img.jpeg" alt=""><p>Leh-Ladakh</p></td>
                    <td><img src="images/kerela_img.jpg" alt=""><p>Kerala Backwaters</p></td>
                    <td><img src="images/jaipur_img.jpg" alt=""><p>Jaipur</p></td>
                  </tr>
                </table>
                <a href="customerpage-place.jsp">Explore More...</a>
              </div>
              <%@include file="SectionAboutFooter.jsp" %>
           </div>
       <%@include file="SectionHeader.jsp" %>
    </body>
    <script>
        document.getElementById("headerhome").style.display = "none";
    </script>
</html>
