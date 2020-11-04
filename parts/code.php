<?php

// Get Current Page Name
$name = isset($_GET["path"]) ? $_GET["path"] : "main";

// Get Title Name
$title = "";
$sql = "SELECT `title` FROM `menu` WHERE `link` = '" . $name . "'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $title = $row['title'];

}
