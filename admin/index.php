<?php

require('../db/connect.php');

$user_name = isset($_POST["username"]) ? $_POST["username"] : "";
$user_pass = isset($_POST["pass"]) ? $_POST["pass"] : "";

$cookie_name = "user";
$cookie_value = "admin";

if ( !isset($_COOKIE[$cookie_name]) ) {
    if ($user_name !== "admin" || $user_pass !== "admin") {
        header("Location: http://test.zone/admin/?login=failed");
    } else {
        setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day
        $_COOKIE[$cookie_name] = $cookie_value;
    }
} elseif ( $_COOKIE[$cookie_name] !== "admin" ) {
    header("Location: http://test.zone/admin/?login=failed");
} elseif (isset($_GET["user"]) && $_GET["user"] === "exit") {
    setcookie("user", "", time() - 3600);
    unset($_COOKIE[$cookie_name]);
}

$url_str = isset($_GET["path"]) ? $_GET["path"] : "main";
$url_arr = explode("/", $url_str);

if (isset($url_arr[0]) && $url_arr[0] === "edit" && isset($url_arr[1])) {
    $name = $url_arr[1];
} else {
    $name = "main";
}

define("DS", DIRECTORY_SEPARATOR);

define("ADMIN_PATH", dirname(__FILE__) . DS);

// ============================================================================
// ============================================================================

require(ADMIN_PATH . "parts" . DS . "menu.php");

require(ADMIN_PATH . "pages" . DS . $name . ".php");

?>
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

</body>
</html>