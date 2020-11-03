<?php

// Get Current Page Name
$name = isset($_GET["path"]) ? $_GET["path"] : "";

// Get Title Name
$title = "";
$sql = "SELECT `title` FROM `menu` WHERE `link` = '" . $name . "'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $title = $row['title'];

}

// Get Header
$header = "";
$sql = "SELECT `header` FROM `menu` WHERE `link` = '" . $name . "'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $header = $row['header'];

}

// Get SubHeader
$subheader = "";
$sql = "SELECT `subheader` FROM `menu` WHERE `link` = '" . $name . "'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $subheader = $row['subheader'];

}
