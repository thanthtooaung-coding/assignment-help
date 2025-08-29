<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            text-align: center;
        }
        h1 {
            color: #28a745;
            margin-bottom: 30px;
        }
        p {
            font-size: 1.1em;
            text-align: left;
            margin: 15px 0;
        }
        strong {
            display: inline-block;
            width: 150px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Registration Successful!</h1>

    <p><strong>First Name:</strong> ${registeredCustomer.firstName}</p>
    <p><strong>Last Name:</strong> ${registeredCustomer.lastName}</p>
    <p><strong>Email:</strong> ${registeredCustomer.email}</p>
    <p><strong>Phone Number:</strong> ${registeredCustomer.phone}</p>
    <p><strong>Shipping Address:</strong> ${registeredCustomer.shippingAddress}</p>
    <p><strong>Billing Address:</strong> ${registeredCustomer.billingAddress}</p>
</div>

</body>
</html>
