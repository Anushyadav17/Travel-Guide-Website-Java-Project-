<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        String hotelName = request.getParameter("hotelName");
        String from = request.getParameter("from");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *
            {
                margin: 0px;
                padding: 0px;
            }
            
            #maindiv{
                width:100%;
                height: 600px;
            }
            
            :root {
              --color-gray: #737888;
              --color-lighter-gray: #e3e5ed;
              --color-light-gray: #f7f7fa;
            }

            *,
            *:before,
            *:after {
              box-sizing: inherit;
            }

            html {
              font-family: "Inter", sans-serif;
              font-size: 14px;
              box-sizing: border-box;
            }

            @supports (font-variation-settings: normal) {
              html {
                font-family: "Inter var", sans-serif;
              }
            }

            body {
              margin: 0;
            }

            h1 {
              margin-bottom: 1rem;
            }

            p {
              color: var(--color-gray);
            }

            hr {
              height: 1px;
              width: 100%;
              background-color: var(--color-light-gray);
              border: 0;
              margin: 2rem 0;
            }

            .container {
                position: relative;
                top: 100px;
              max-width: 40rem;
             
              margin: 0 auto;
              height: 100vh;
            }

            .form {
              display: grid;
              grid-gap: 1rem;
            }

            .field {
              width: 100%;
              display: flex;
              flex-direction: column;
              border: 1px solid var(--color-lighter-gray);
              padding: .5rem;
              border-radius: .25rem;
            }

            .field__label {
              color: var(--color-gray);
              font-size: 0.6rem;
              font-weight: 300;
              text-transform: uppercase;
              margin-bottom: 0.25rem
            }

            .field__input {
              padding: 0;
              margin: 0;
              border: 0;
              outline: 0;
              font-weight: bold;
              font-size: 1rem;
              width: 100%;
              -webkit-appearance: none;
              appearance: none;
              background-color: transparent;
            }
            .field:focus-within {
              border-color: #000;
            }

            .fields {
              display: grid;
              grid-gap: 1rem;
            }
            .fields--2 {
              grid-template-columns: 1fr 1fr;
            }
            .fields--3 {
              grid-template-columns: 1fr 1fr 1fr;
            }

            .button {
              background-color: #000;
              text-transform: uppercase;
              font-size: 0.8rem;
              font-weight: 600;
              display: block;
              color: #fff;
              width: 100%;
              padding: 1rem;
              border-radius: 0.25rem;
              border: 0;
              cursor: pointer;
              outline: 0;
            }
            .button:focus-visible {
              background-color: #333;
            }
        </style>
    </head>
    <body>
        
        <div id="maindiv">
            <div class="container">
                <h1>Booking</h1>
                <p>Please enter your Booking details.</p>
                <hr />
                <form id="form" action="JavacodeInsertOrder.jsp">
                <div class="form" >
                    
                <div class="fields fields--2">
                 
               
                 <label class="field">
                    <span class="field__label" for="city">Hotel Name</span>
                    <input class="field__input" type="text" id="city" value="<%=hotelName%>" readonly name="hotelName"/>
                    <input class="field__input" type="text" id="city" value="<%=from%>" readonly name="from" style="display: none;"/>
                  </label>
                <label class="field">
                  <span class="field__label" for="address">Address</span>
                  <input class="field__input" type="text" id="address" name="Address" />
                </label>
                <label class="field">
                  <span class="field__label" for="country">Country</span>
                  <select class="field__input" id="country">
                    <option value=""></option>
                    <option value="unitedstates">United States</option>
                  </select>
                </label>
                <div class="fields fields--3">
                  <label class="field">
                    <span class="field__label" for="zipcode">Select Date - From</span>
                    <input class="field__input" type="date" id="zipcode" name="fromDate"/>
                  </label>
                  <label class="field">
                    <span class="field__label" for="city">Select Date - To</span>
                    <input class="field__input" type="date" id="city" name="toDate"/>
                  </label>
                </div>
                </div>
                <hr>
                <button class="button" value="submit"onclick="fun()">Continue</button>
              </div>
            </form>
        </div>
        <%@include file="SectionAboutFooter.jsp" %>
        <%@include file="SectionHeader.jsp" %>
    </body>
</html>
