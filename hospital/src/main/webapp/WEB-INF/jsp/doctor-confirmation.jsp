<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctor Confirmation</title>
    <style>
        body { font-family: sans-serif; margin: 40px; }
        h1 { color: #0056b3; }
        p { font-size: 1.1em; }
    </style>
</head>
<body>

<h1>New Doctor Confirmation</h1>

<p><strong>Doctor Name:</strong> ${savedDoctor.name}</p>
<p><strong>Specialization:</strong> ${savedDoctor.specialization}</p>
<p><strong>Contact Number:</strong> ${savedDoctor.contactNumber}</p>
<p><strong>Salary:</strong> ${savedDoctor.salary}</p>

</body>
</html>
