<section class="contacts">
<?php

$sql = "SELECT `block_name`, `header`, `content` FROM `contact`";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    echo "<section class=\"" . $row["block_name"] . "\">";
    echo "    <h3>" . $row["header"] . "</h3>";
    echo "    " . $row["content"] . "";
    echo "</section>";

}

?>
</section>
