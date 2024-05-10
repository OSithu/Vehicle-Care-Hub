<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Appointment</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #000;
        color: #fff;
        margin: 0;
        padding: 0;
    }

    h1 {
        background-color: #ffcc00;
        color: #000;
        text-align: center;
        padding: 20px;
        margin: 0;
    }

    .container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #000;
        box-shadow: 0 0 10px rgba(255, 204, 0, 0.5);
        border-radius: 5px;
    }

    form {
        margin: 20px 0;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    select,
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ffcc00;
        border-radius: 4px;
        font-size: 16px;
        background-color: #333;
        color: #ffcc00;
    }

    select {
        height: 40px;
    }

    textarea {
        height: 100px;
    }

    input[type="submit"] {
        background-color: #ffcc00;
        color: #000;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 18px;
    }

    input[type="submit"]:hover {
        background-color: #ffdb4d;
    }
</style>
</head>
<body>
    <h1>Get Appointment</h1>
    <div class="container">
        <form action="create" method="post">
            <h2>User Details</h2>
            Name <input type="text" name="name"><br><br>
            Address <input type="text" name="address"><br><br>
            Phone Number <input type="text" name="phone"><br><br>
            <h2>Vehicle Details</h2>
            Type  <select name="vtype">
                <option value="Car">Car</option>
                <option value="Van">Van</option>
                <option value="Bus">Bus</option>
                <option value="MotorCycle">MotorCycle</option>
            </select><br><br>
            Vehicle Name <input type="text" name="vname"><br><br>
            Model <input type="text" name="model"><br><br>
            Register No <input type="text" name="register"><br><br>
            Service <select name="service">
                <option value="Routine_Maintenance_Service">Routine Maintenance Service</option>
                <option value="Diagnostic_and_Repair_Service">Diagnostic and Repair Service</option>
                <option value="Brake_and_Tire_Service">Brake and Tire Service</option>
                <option value="Scheduled_Manufacturer_Service">Scheduled Manufacturer Service</option>
                <option value="Vehicle_Inspection_and_Safety_Checks"> Vehicle Inspection and Safety Checks</option>
                <option value="Oil_Change_Service">Oil Change Service</option>
            </select><br><br>

            <input type="submit" name="submit" value="Get Appointment">
        </form>
    </div>
</body>
</html>
