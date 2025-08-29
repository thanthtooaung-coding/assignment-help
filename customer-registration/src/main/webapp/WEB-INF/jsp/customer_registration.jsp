<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Registration</title>
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
        .form-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
            min-height: 80px;
        }
        .btn {
            background-color: #28a745;
            color: white;
            padding: 15px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
            font-size: 16px;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Customer Registration</h1>
    <form:form action="register" method="post" modelAttribute="customer">
        <div class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="email">Email</form:label>
            <form:input path="email" type="email" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="phone">Phone Number</form:label>
            <form:input path="phone" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="shippingAddress">Shipping Address</form:label>
            <form:textarea path="shippingAddress" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="billingAddress">Billing Address</form:label>
            <form:textarea path="billingAddress" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="password">Password</form:label>
            <form:password path="password" required="true"/>
        </div>
        <button type="submit" class="btn">Register</button>
    </form:form>
</div>

</body>
</html>
