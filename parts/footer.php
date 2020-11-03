<?php

$footer_left  = array();
$footer_right = array();

$sql = "SELECT `name`, `header`, `content` FROM `element` WHERE `name`='footer_left'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $footer_left["name"]    = $row["name"];
    $footer_left["header"]  = $row["header"];
    $footer_left["content"] = $row["content"];

}

$sql = "SELECT `name`, `header`, `content` FROM `element` WHERE `name`='footer_right'";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $footer_right["name"]    = $row["name"];
    $footer_right["header"]  = $row["header"];
    $footer_right["content"] = $row["content"];

}

?>

<footer>

    <div class="<?=$footer_left["name"]?>">
        <h3><?=$footer_left["header"]?></h3>
        <div><?=$footer_left["content"]?></div>
    </div>

    <div class="<?=$footer_right["name"]?>">
        <h3><?=$footer_right["header"]?></h3>
        <div><?=$footer_right["content"]?></div>
    </div>

</footer>