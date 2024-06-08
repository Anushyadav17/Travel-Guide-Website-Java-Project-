<style>
    .header
        {
            width: 100%;
            height: 70px;
            background-color: rgba(255, 255, 255);;
            
            display: flex;
            justify-content: space-around;
            align-items: center;
            box-shadow: rgba(157, 157, 157, 0.2) 0px 4px 5px;
            position: fixed;
            top:0;
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
            width: 60px;
            height: 60px;
            background-color: transparent;
        }
        .logo p{
            font-size: 24px;
            text-shadow: 1px 1px;
            color: #6674CC;
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
            gap: 30px;
        }
        .otherItem ol a
        {
            color: black;
           text-decoration: none;
           line-height: 24px;
           text-align: center;
           font-size: 20px;
           
        }
        .otherItem li:hover
        {
            transform: scale(1.2);
        }
</style>
<header class="header">
            <div class="logo">
                <img src="images/logo.png" alt="here">
                <p><i><b>Bharat Tour</b></i></p>
            </div>
            <div class="otherItem">
                <ol>
                    
                </ol>
            </div>
            <div class="otherItem">
                <ol>
                    <li>
                        <a href="adminpage-addCustomer.jsp" id="headerabout">Add User</a>
                    </li>
                    <li>
                        <a href="adminpage-addSp.jsp" id="headerabout">Add Service Provider</a>
                    </li>
                    <li>
                        <a href="adminpage-addHotel.jsp" id="headercontact">Add Hotel</a>
                    </li>
                    <li>
                        <a href="adminpage-addResto.jsp" id="headercomplain">Add Restaurants</a>
                    </li>
                    <li>
                        <a href="destroysession.jsp" class="logout">Logout</a>
                    </li>
                </ol>
            </div>
    </header>
