<%-- 
    Document   : list_history
    Created on : Oct 27, 2023, 11:56:01 AM
    Author     : tuna
--%>
<jsp:useBean class="model.repository.TicketRepository" id="showTicket"></jsp:useBean>
<jsp:useBean class="model.repository.CarRouteRepository" id="showCarroute"></jsp:useBean>
<jsp:useBean class="model.repository.CarRepository" id="showCar"></jsp:useBean>
<jsp:useBean class="model.repository.LocationRepository" id="showLocation"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/list_staff.css"/>
        <style>
            .carousel{
                width: 100%;
            }

            .carousel-item img {
                max-height: 500px; /* Điều chỉnh chiều cao tối đa */
                object-fit: cover; /* Hiển thị hình ảnh đầy đủ trong khung hiển thị */
                width: 100%;
            }
            .step-item{
                width: auto;
                height: 250px;
                border: dashed 3px var(--teal);
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                padding: 20px 40px;
            }

            .step-name{
                font-weight: 600;
                font-size: 28px;
                color: black;
            }

            .step-content{
                text-align: left;
                margin-bottom: 10px;
            }

            .step-content p{
                margin: 0;
            }

            .highlight{
                color: var(--dark);
                font-weight: 600;
            }

            .step-item a{
                height: auto;
                background-color: var(--teal);
                margin: 0 auto;
                padding: 10px 40px;
                color: white;
                font-weight: 600;
                border-radius: 2px;
            }
            .box-search {
                background-color: #fff;
                padding: 10px;
                margin-top: -300px; /* Điều chỉnh khoảng cách giữa carousel và giao diện tìm kiếm */
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
                position: relative; /* Để điều chỉnh vị trí tương đối cho box-search */
                z-index: 1; /* Để đảm bảo rằng box-search nằm trên carousel */
            }
            /* Đảm bảo rằng các phần tử trong carousel không bị che phủ bởi box-search */
            .carousel-item {
                z-index: 0;
            }
            .ftco-section {
                margin-top: 250px; /* Điều chỉnh khoảng cách theo ý muốn */
            }
            /* CSS cho nút "Tìm vé" */
            .btn-find-ticket {
                background-color: #007bff; /* Màu nền */
                color: #fff; /* Màu chữ */
                border: none; /* Loại bỏ viền */
                border-radius: 5px; /* Bo tròn góc */
                width: 100px;
                /* Kích thước nút */
                margin-left: 30px;
                font-size: 16px; /* Cỡ chữ */
                cursor: pointer; /* Đổi con trỏ chuột thành con trỏ tay khi di chuột qua nút */
                transition: background-color 0.3s ease; /* Hiệu ứng màu nền thay đổi mượt mà */
            }

            /* CSS cho hover nút "Tìm vé" (thay đổi màu nền khi di chuột qua) */
            .btn-find-ticket:hover {
                background-color: #0056b3; /* Màu nền thay đổi khi hover */
            }

            footer {
                width: 100%;
                margin-top: 30px;
                background-color: var(--teal);
                color: #fff;
                padding: 20px 0;
                /*text-align: center;*/
            }

            /* Định dạng cho liên kết trong footer */
            footer a {
                color: #fff;
                text-decoration: none;
            }

            /* Định dạng cho liên kết hover */
            footer a:hover {
                text-decoration: underline;
            }

            td{
                padding: 0px 10px;
            }

            body{
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

            .container{
                margin-top: 100px;
            }
            .box-list{
                margin-top: 100px;
            }

            form{
                margin: 0px;
            }

            .button-form{
                border: none;
                background-color: white;
                color: red;
            }

        </style>

    </head>

    <body>
        <%@ include file="/include/header.jsp" %>

        <div class="box-list">
            <div class="title-page">
                List History
            </div>

            <div class="table">
                <table border="2">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Car Name</th>
                            <th>License Plate</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Start</th>
                            <th>End</th>
                            <th>Date Start</th>
                            <th>Total</th>
                            <th>Date book</th>
                            <th>Payment</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${oulistS}">
                            <tr id = "row${order.id}">
                                <td>${order.id}</td>
                                <td>${showCar.getCar(showCarroute.getCarroute(
                                      showTicket.getTicketByOrder(order.id).route_id
                                      ).car_id).name
                                    }
                                </td>
                                <td>${showCar.getCar(showCarroute.getCarroute(
                                      showTicket.getTicketByOrder(order.id).route_id
                                      ).car_id).licenseplate
                                    }
                                </td>
                                <td>${
                                    showLocation.getlocation(showCarroute.getCarroute(
                                        showTicket.getTicketByOrder(order.id).route_id
                                        ).from
                                        ).province
                                    }
                                </td>
                                <td>${
                                    showLocation.getlocation(showCarroute.getCarroute(
                                        showTicket.getTicketByOrder(order.id).route_id
                                        ).to
                                        ).province
                                    }
                                </td>
                                <td>${
                                    showCarroute.getCarroute(
                                        showTicket.getTicketByOrder(order.id).route_id
                                        ).start
                                    }
                                </td>
                                <td>${
                                    showCarroute.getCarroute(
                                        showTicket.getTicketByOrder(order.id).route_id
                                        ).end
                                    }
                                </td>
                                <td>${
                                    showCarroute.getCarroute(
                                        showTicket.getTicketByOrder(order.id).route_id
                                        ).datestart
                                    }
                                </td>
                                <td>${order.total_price}</td>
                                <td>${order.date_order}</td>
                                <c:if test="${order.status == 0}">
                                    <td>
                                        <form action="ajax" method="post">
                                            <input type="hidden" name="orderNumber" value="${order.id}">
                                            <input type="hidden" name="amount" value="${order.total_price}">
                                            <button class="button-form" type="submit">Not Pay</button>
                                        </form>   
                                    </td>
                                </c:if>
                                <c:if test="${order.status == 1}">
                                    <td style="color: green">Payed</td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>
