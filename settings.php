<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./resources/cityfindr.css">
    <link rel="stylesheet" type="text/css" href="./resources/settings.css">

    <title>Document</title>
</head>
<body>
<nav>
        <a href="./home.php">Home</a>
        <a href="./events.php">Events</a>
        <a href="./organizations.php">Organizations</a>
        <a href="./profile.php">Profile</a>
        <a href="./settings.php">Settings</a>
    </nav>

    <h2>Change Personal Information</h2>
    <h3>Change Password</h3>
    <form>
        <input type="oldPassword" placeholder="Enter Old Password" required>
        <input type="newPassword" placeholder="Enter New Password" required>
        <input type="submit" placeholder="Submit">
    </form>
    <h3>Change Location</h3>
    <form>
        <input type="addressOne" placeholder="Enter new address one" required>
        <input type="addressTwo" placeholder="Enter New address two if possible" >
        <input type="text" id="state" placeholder="Enter your state (if applicable)">
        <input type="text" id="city" placeholder="Enter your city" required>
        <input type="text" id="postalCode" placeholder="Enter your postal code" required>
        <input type="text" id="country" placeholder="Enter your country" required>
        <input type="submit" placeholder="Submit">
    </form>
    <h3>Delete Account</h3>
    <form>
        <input type="username" placeholder="Enter username" required>
        <input type="password" placeholder="Enter password" required>
        <input type="submit" placeholder="submit">
    </form>
</body>
</html>