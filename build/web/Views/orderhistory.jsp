<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    
    <div class="container my-5">
        <h1 class="text-center mb-4">Order History</h1>

        <c:forEach var="orderHistory" items="${list}">
            <div class="card mb-4">
                <div class="card-header">
                    <h5>Order Date: ${orderHistory.orderDate}</h5>
                    <p><strong>Order Total:</strong> ${orderHistory.orderTotal}</p>
                </div>
                <div class="card-body">
                    <h5>Order Details:</h5>
                    <table class="table table-bordered">
                        <thead class="table-light">
                            <tr>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="orderDetail" items="${orderHistory.orderDetailsList}">
                                <tr>
                                    <td>${orderDetail.pID.name}</td>
                                    <td>${orderDetail.quantity}</td>
                                    <td>${orderDetail.price}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
