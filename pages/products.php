<?php

$sql = "SELECT `img`, `alt`, `header`, `text` FROM `product`";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {

    echo "<section class=\"item\">";
    echo "    <img src=\"img/" . $row["img"] . "\" alt=\"" . $row["alt"] . "\">";
    echo "    <h3>" . $row["header"] . "</h3>";
    echo "    <p>" . $row["text"] . "</p>";
    echo "</section>";

}
