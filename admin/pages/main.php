<?php

if ( isset($_POST["header"]) && isset($_POST["content"]) ) {
    $submit_result = isset($_POST) ? $_POST : "";
    $header = $submit_result["header"];
    $content = $submit_result["content"];
    
    $sql = "UPDATE `main`
                SET `header` = '" . $header . "', `content`= '" . $content . "'
                WHERE `id` = 1";
    $result = mysqli_query($conn, $sql);
    
    $result_message = $result ? "You changes accepted!" : "Something wrong!";
}

// ============================================================================
// ============================================================================

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
    <div class="content">

<?php if (isset($result_message)): ?>
        <h3><?=$result_message?></h3>
<?php endif; ?>

        <form action="/admin/panel.php" method="post">
            <input type="text" name="header" value="<?=$main_page_header?>">
            <textarea name="content" rows="10" cols="30"><?=$main_page_content?></textarea>
            <input type="submit" value="Submit">
        </form>
        
    </div>
</article>