<?php

$current_page  = "";

switch ($name) {
    case "products":
        $current_page = "Products";
        break;
    case "about":
        $current_page = "About";
        break;
    case "contacts":
        $current_page = "Contacts";
        break;
    default:
        $current_page = "Main";
}

?>

<header>
    <h1><?=$header?></h1>
    <h2><?=$subheader?></h2>
</header>
