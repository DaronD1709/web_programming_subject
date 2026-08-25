<html>
    <head>
        <meta charset ="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css?v=3" type="text/css"/>
    </head>
<body>
    <div class="survey">
        <img src="img/images.png" alt="alt" height="100"/>
        <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

        <form action="emailList" method="post">
            <input type='hidden' name='action' value='add'>

            <h2>Your information:</h2>

            <label for="firstName">First Name</label>
            <input type="text" name='firstName' id="firstName" required>
            <br>

            <label for="lastName">Last Name</label>
            <input type='text' name="lastName" id="lastName" required><!-- comment -->
            <br>

            <label for="email">Email</label>
            <input type='email' name='email' id="email" required>
            <br>

            <label for="dob">Date of Birth</label>
            <input type='date' name='dateOfBirth' id="dob">
            <br>

            <h2>How did you hear about us?</h2>
            <div class="radio-row">
                <label class="inline"><input type="radio" name="source" value="search" checked>Search engine</label>
                <label class="inline"><input type="radio" name="source" value="wordOfMouth">Word of mouth</label>
                <label class="inline"><input type="radio" name="source" value="socialMedia">Social Media</label>
                <label class="inline"><input type="radio" name="source" value="other">Other</label>
            </div>

            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <div class="checkbox-list">
                <label class="inline"><input type="checkbox" name="announcements" value="general">YES, I'd like that.</label>
                <br>
                <label class="inline"><input type="checkbox" name="announcements" value="email">YES, please send me email announcements.</label>
            </div>
            <br><!-- comment -->

            <div class="contact-by">
                <label for="contactBy" class="inline-label">Please contact me by:</label>
                <select name="contactBy" id="contactBy">
                    <option value="emailOrPostal">Email or postal mail</option>
                    <option value="emailOnly">Email only</option>
                    <option value="postalOnly">Postal mail only</option>
                    <option value="none">Do not contact me</option>
                </select>
            </div>

            <input type='submit' value="Submit" id="submit">

        </form>
    </div>
</body>
</html>
