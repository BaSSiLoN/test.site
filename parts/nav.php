<nav>   
    <ul>

<?php

$sql = "SELECT `link`, `name` FROM `menu`";
$result = mysqli_query($conn, $sql);

while($row = mysqli_fetch_assoc($result)) {

    $active = $name === $row["link"] ? " class=\"active\"" : "";

    echo "<li><a href=\"" . $row["link"] . "\"" . $active . ">" . $row["name"] . "</a></li>\r\n";

}

?>

    </ul>
</nav>