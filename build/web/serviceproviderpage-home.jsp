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
                background-color: rgba(225, 225, 225, 0.3);
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
              font-size: 27px;
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
              left: 10px;
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
              font-size: 20px;
              box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 5px;
              text-align: center;
              text-decoration: none;
              background-color: #6674CC;
              color: white;
              padding: 10px;
              border-radius: 10px;
              margin-bottom: 15px;
            }
            #maindivcontent2 a:hover , #button:hover
            {
              transform: scale(1.02);
            }
            #hotelform , #restoform
            {
                padding-left: 50px;
                padding-top: 0px;
                display: none;
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
           <div class="searchbox">
              <div id="searchboxheader">
                <p>Select Your Service Type</p>
              </div><hr>
              <div id="searchboxcontent1">
                <div>
                    <a href="#" onclick="showresto()">
                    <img src="images/restorantlogo.png" alt="">
                    <button>Restaurants</button>
                    </a>
                 </div>
                 <div>
                    <a href="#" onclick="showtransport()">
                    <img src="images/transpotlogo.png" alt="">
                    <button>Transport</button>
                    </a>
                 </div>
              </div>
              <div id="searchboxcontent1">
                <div style="position: relative; left: 80px;">
                   <a href="#" onclick="showhotel()">
                   <img src="images/hotellogo.png" alt=""><br>
                   <button>Hotels</button>
                   </a>
                </div>
             </div>
            </div>
           <div class="maindiv">
              <img src="images/header-banner.jpg" alt="click here" id="maindivimg1">
              
                <table cellspacing="20px" id="hotelform">
                    <form action="JavacodeInsertHotel.jsp" method="post">
                     <tr style="text-align: center; font-size: 25px; font-family: sans-serif;">
                            <td colspan="2">Fill Hotel Details</td>
                            <input type="text" name="post" style="display: none;" value="ser">
                            <input type="text" name="spid" style="display: none;" value="<%=session.getAttribute("SP")%>">
                     </tr>
                    <tr>
                        <td><label for="hotelname">Enter img link</label></td>
                        <td><input type="text" name="img"></td>
                    </tr>
                    <tr>
                        <td><label for="address">Enter hotel name</label></td>
                        <td> <input type="text" name="hotelname" ></td>
                    </tr>
                    <tr>
                        <td><label for="city">Enter address</label></td>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr>
                        <td><label for="state">Enter city</label></td>
                        <td><input type="text" name="city"></td>
                    </tr>
                    <tr>
                        <td><label for="charges">Enter charges per day</label></td>
                        <td> <input type="text" name="charges"></td>
                    </tr>
                    <tr>
                        <td><label for="charges">Enter Hotel Id</label></td>
                        <td> <input type="text" name="HotelId"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" id="button"></td>
                        <td><input type="submit" id="button"></td>
                    </tr>
                    </form>
                </table>
                <table cellspacing="20px" id="restoform">
                    <form action="JavacodeInsertResto.jsp" method="post">
                     <tr style="text-align: center; font-size: 25px; font-family: sans-serif;">
                            <td colspan="2">Fill Restaurants Details</td>
                            <input type="text" name="post" style="display: none;" value="sp">
                            <input type="text" name="spid" style="display: none;" value="<%=session.getAttribute("SP")%>">
                     </tr>
                    <tr>
                        <td><label for="hotelname">Enter img link</label></td>
                        <td><input type="text" name="img"></td>
                    </tr>
                    <tr>
                        <td><label for="address">Enter Restaurants name</label></td>
                        <td> <input type="text" name="restoname" ></td>
                    </tr>
                    <tr>
                        <td><label for="city">Enter address</label></td>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr>
                        <td><label for="state">Enter city</label></td>
                        <td><input type="text" name="city"></td>
                    </tr>
                    <tr>
                        <td><label for="charges">Enter charges per day</label></td>
                        <td> <input type="text" name="charges"></td>
                    </tr>
                    <tr>
                        <td><label for="charges">Enter Restaurants Id</label></td>
                        <td> <input type="text" name="restoId"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" id="button"></td>
                        <td><input type="submit" id="button"></td>
                    </tr>
                    </form>
                </table>

              <%@include file="SectionAboutFooter.jsp" %>
           </div>
       <%@include file="SectionHeaderSp.jsp" %>
    </body>
    <script>
        function showhotel()
        {
            document.getElementById("hotelform").style.display = "block";
            document.getElementById("restoform").style.display = "none";
        }
        function showresto()
        {
            document.getElementById("hotelform").style.display = "none";
            document.getElementById("restoform").style.display = "block";
        }
    </script>
</html>
