<style>
        main
        {
            width: 100%;
            height: 100%;
            display: flex;
        } 
        .customersection
        {
            position: relative;
            top: 70px;
            margin: 10px;
        }
        .admindetail
        {
            width: 250px;
            height: 700px;
            margin-top: 1px;
            background-color: white;
            position: relative;
            top:75px;
        }
        .admindetail img
        {
            height: 100px;
            width: 100px;
            border-radius: 80px;
            margin-top: 10px;
            position: relative;
            left: 22%;
        }
        .admindetail ol
        {
           list-style: none;
           display: flex;
           flex-direction: column;
           gap: 20px;
           margin: 50px;
           margin-top: 20px;
           width: 150px;
        }
        .admindetail ol li a
        {
           text-decoration: none;
           color: black;
           font-size: 18px;
           border: none;
           background-color: transparent;
           text-align: center;
        }
        .admindetail ol li a:hover
        {
            border-bottom:1px solid black;
        }
    </style>
    <section class="admindetail">
            <img src="images/profilephoto.jpg" alt="click here">
            <ol>
                <li>
                    <a href="adminpage-home.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="adminpage-viewcustomer.jsp">View Customer</a>
                </li>
                
                <li>
                    <a href="adminpage-viewfeedback.jsp">View Feedback</a>
                </li>
                 <li>
                    <a href="adminpage-viewhotel.jsp">View Hotels</a>
                </li>
                 <li>
                    <a href="adminpage-viewResto.jsp">View Restaurants</a>
                </li>
                <li>
                    <a href="adminpage-vieworder.jsp">View Booking</a>
                </li>
                <li>
                    <a href="adminpage-viewsp.jsp">View Service Provider</a>
                </li>
            </ol>
        </div>
        </section>