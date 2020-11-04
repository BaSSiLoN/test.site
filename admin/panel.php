<?php

$user_name = isset($_POST["username"]) ? $_POST["username"] : "";
$user_pass = isset($_POST["pass"]) ? $_POST["pass"] : "";

if ($user_name !== "admin" || $user_pass !== "123") {
    header("Location: http://test.zone/admin/?login=failed");
}

?>

<h1>Congratulations, you are in Admin Panel Page!</h1>
