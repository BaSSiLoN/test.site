<?php

if ($name === "") {
    require('pages/main.php');
} else {
    require('pages/' . $name . '.php');
}