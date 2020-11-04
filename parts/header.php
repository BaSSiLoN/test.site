<?php

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

?>

<header>
    <h1><?=$header?></h1>
    <h2><?=$subheader?></h2>
</header>
