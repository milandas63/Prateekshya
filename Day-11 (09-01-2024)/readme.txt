<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>
    <h2>Registration Form</h2>

    <form action="">
        <label for="father_name">Name of Applicant's Father:</label><br>
        
        <input type="text" id="applicant_name" name="applicant_name"><br>

        
        <input type="text" id="father_name" name="father_name"><br>
       
        <label for="gender">Gender of Applicant:</label><br>
        <input type="radio" id="male" name="gender" value="male">
        <label for="male">Male</label><br>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Female</label><br>

        <label for="dob">Date of Birth:</label><br>
        <input type="date" id="dob" name="dob"><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br>

        <label for="phone">Phone Number:</label><br>
        <input type="tel" id="phone" name="phone"><br>

        <input type="submit" value="Submit">
        <input type="reset" value="Clear">
    </form>

</body>
</html>
