<%-- 
    Document   : CreateTicket
    Created on : Oct 16, 2023, 2:54:40 AM
    Author     : tuna
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean class="model.repository.LocationRepository" id="show1"></jsp:useBean>
<jsp:useBean class="model.repository.CarRepository" id="showcar"></jsp:useBean>
<jsp:useBean class="model.repository.SeatRepository" id="show2"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <style>
                :root {
                    --primary: #20c997;
                    --secondary: #E0E0E0;
                    --light: #befff7;
                    --dark: #419197;
                    --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
                }
                *{
                    font-family: sans-serif;
                }
                html,body{
                    width: 100%;
                    height:100%;
                }
                .body{
                    /*background-color: #00C6FF;*/
                    margin-top: 80px;
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }


                form{
                    margin: 10px;
                    width:90%;
                    background-color: #419197;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    border-radius: 10px;
                    color: white;
                }

                table{
                    margin:10px;
                    width: 100%;
                }

                .title{
                    padding: 10px;
                    font-size: 24px;
                }
                .head-row{
                    background-color: var(--light);
                }

                .t-row{
                    width: 100%;
                }
                .text-head{
                    padding: 5px;
                    text-align: center;
                    color: var(--dark);
                }

                .passen-column{
                    padding: 5px 20px;
                    width: 30%;
                }
                input{
                    /*margin: 5px;*/
                    padding: 2.5px 5px;
                    width: 100%;
                }

                .car-infor-column{
                    width: 20%;
                    padding: 0px 20px;
                }
                
                .time-infor-column{
                    width: 20%;
                    padding: 10px 20px 0px 20px;
                }

                .price-column{
                    text-align: center;
                }

                .delete-column{
                    text-align: center;
                }
                

                .button-form{
                    width: 30%;
                    margin:20px 0px;
                    padding: 10px;
                    color: #419197;
                    background-color: white;
                    border-radius: 10px;
                    border: none;
                }

                .button-form:hover {
                    background-color: var(--primary);
                    color: white;
                }

                .delete-column i{
                    color: white;
                    font-size: 24px;
                }

                .delete-column i:hover{
                    color: var(--primary);
                }
            </style>
        </head>
        <body>
        <%@ include file="/include/header.jsp" %>
        <div class="body">
            <form action="createticket" method="POST">
                <div class="title"> Chuyến xe số ${curCarroute.id} </div>
                <table width="100%" border="1">
                    <thead>
                        <tr class="head-row">
                            <th class="text-head">Passenger Information</th>
                            <th class="text-head car-infor-column">Car Infor</th>
                            <th class="text-head">Time Infor</th>
                            <th class="price-column text-head">Price</th>
                            <th class="delete-column text-head">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ticket" items="${lticketS}">
                            <tr class="t-row">
                                <td class="passen-column">
                                    <label>Name Passenger:</label>
                                    <input value="" name="passen_name${ticket.id}" type="text" required="">
                                    <br>
                                    <label>Phone Passenger:</label>
                                    <input value="" name="passen_phone${ticket.id}" type="text" required="">
                                </td>
                                <td class="car-infor-column">
                                    <p>
                                        Number seat: ${show2.getById(ticket.seat_id).seat_number}
                                    </p>
                                    <p>Car Name: ${showcar.getCar(curCarroute.car_id).name}</p>
                                    <p>Car Plate: ${showcar.getCar(curCarroute.car_id).licenseplate}</p>
                                </td>
                                <td class="time-infor-column">
                                    <p>From: ${show1.getlocation(curCarroute.from).province}</p>
                                    <p>To: ${show1.getlocation(curCarroute.to).province}</p>
                                    <p>Start: ${curCarroute.start}</p>
                                    <p>End: ${curCarroute.end}</p>
                                    <p>Date Start: ${curCarroute.datestart}</p>
                                </td>
                                <td class="price-column">
                                    ${curCarroute.price}
                                </td>
                                <td class="delete-column">
                                    <a href="" onclick="messconfirm(${ticket.id})"><i class="fa-solid fa-trash-can"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div>Total: ${totalPrice}</div>
                <input class="button-form" type="submit" value="Continue">
            </form>
        </div>
                
        <script>
            function messconfirm(id) {
                var option = confirm('Are you sure to delete');
                if (option === true) {
                    window.location.href = 'deleteticket?tid=' + id;
                }
            }
        </script>        
        <script src="https://kit.fontawesome.com/4c84863d74.js" crossorigin="anonymous"></script>
    </body>
</html>
