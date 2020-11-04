<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
</head>
<body>
    <h1>Hello, This is Admin Panel</h1>
<?php
$login = isset($_GET["login"]) ? $_GET["login"] : "";
if ($login === "failed") {
    echo "<p>You login or password is wrong.</p>";
}
?>
    <form action="/admin/panel.php" method="post">
        <input type="text" name="username" id="username">
        <input type="password" name="pass" id="pass">
        <input type="submit" value="Enter the Admin">
    </form>
</body>
</html>