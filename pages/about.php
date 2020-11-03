<section class="about">
<?php

$sql = "SELECT `block_name`, `header`, `content` FROM `about`";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    echo "<div class=\"" . $row["block_name"] . "\">";
    echo "    <h3>" . $row["header"] . "</h3>";
    echo "    " . $row["content"] . "";
    echo "</div>";

}

?>
</section>
