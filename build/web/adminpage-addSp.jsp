<%@include file="security.jsp" %>
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
            <table cellspacing="20px" id="hotelform">
                    <form action="JavacodeInsertServiceProvider.jsp" method="post">
                     <tr style="text-align: center; font-size: 25px; font-family: sans-serif;">
                            <td colspan="2">Fill Service Provider Details</td>
                            <input type="text" name="post" style="display: none;" value="admin">
                     </tr>
                     <tr>
                        <td><label for="hotelname">Enter service</label></td>
                        <td><input type="text" name="service"></td>
                    </tr>
                    <tr>
                        <td><label for="hotelname">Enter name</label></td>
                        <td><input type="text" name="name"></td>
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
                        <td><label for="charges">Enter state</label></td>
                        <td> <input type="text" name="state"></td>
                    </tr>
                    <tr>
                        <td><label for="tel">Enter contact number</label></td>
                        <td><input type="tel" name="cont"></td>
                    </tr>
                    <tr>
                        <td><label for="tel">Enter username</label></td>
                        <td><input type="tel" name="userId"></td>
                    </tr><!-- comment -->
                    <tr>
                        <td><label for="tel">Enter password</label></td>
                        <td><input type="tel" name="pass"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" id="button"></td>
                        <td><input type="submit" id="button"></td>
                    </tr>
                    </form>
                </table>
        </section>
    </main>
    <%@include file="SectionAdminHeader.jsp" %>
</body>
</html> 