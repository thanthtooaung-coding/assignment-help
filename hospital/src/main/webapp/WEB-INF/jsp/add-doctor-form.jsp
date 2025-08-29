<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add New Doctor</title>
    <style>
        body { font-family: sans-serif; margin: 40px; }
        h1 { color: #0056b3; }
        .form-container { max-width: 500px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"] { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { background-color: #28a745; color: white; padding: 10px 15px; border: none; cursor: pointer; border-radius: 4px; }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Add New Doctor</h1>
    <form:form action="saveDoctor" method="post" modelAttribute="doctor">
        <div class="form-group">
            <form:label path="name">Doctor Name</form:label>
            <form:input path="name" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="specialization">Specialization</form:label>
            <form:input path="specialization" required="true"/>
        </div>
        <div class="form-group">
            <form:label path="contactNumber">Contact Number</form:label>
            <form:input path="contactNumber"/>
        </div>
        <div class="form-group">
            <form:label path="salary">Salary</form:label>
            <form:input path="salary" required="true"/>
        </div>

        <button type="submit" class="btn">Add Doctor</button>
    </form:form>
</div>

</body>
</html>
