<?php

$main_page_header  = "";
$main_page_content = "";

$sql = "SELECT `header`, `content` FROM `main` WHERE `id` = 1";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    $main_page_header  = $row["header"];
    $main_page_content = $row["content"];

}

?>

<article class="main">
    <h3><?=$main_page_header?></h3>
    <div class="content">
        <?=$main_page_content?>
    </div>
</article>