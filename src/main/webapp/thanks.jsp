<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css?v=3" type="text/css"/>
</head>

<body>
    <div class="survey">
        <img src="img/images.png" alt="alt" height="100"/>
        <h1>Thanks!</h1>
        <p>Thanks for joining our email list. Here is the information that you entered:</p>

        <p>
            <label class="inline">First Name:</label> ${user.firstName}<br>
            <label class="inline">Last Name:</label> ${user.lastName}<br>
            <label class="inline">Email:</label> ${user.email}<br>
            <label class="inline">Date of Birth:</label> ${user.dateOfBirth}<br>
            <label class="inline">Heard about us via:</label> ${user.source}<br>
            <label class="inline">Announcements:</label> ${user.announcementsDisplay}<br>
            <label class="inline">Contact by:</label> ${user.contactBy}<br>
        </p>

        <p>To enter another email address, click on the Back
            button in your browser or the Return button shown
            below.</p>

        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return" id="submit">
        </form>
    </div>
</body>
</html>
