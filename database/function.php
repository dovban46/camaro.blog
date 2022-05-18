<?php
include "conf.php";

//додання меню
function get_menu (){
    global $conn;
    $sql = "SELECT * FROM menu";
    $result = mysqli_query($conn, $sql);
    $menus = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $menus;
}
$menus = get_menu($conn);


//додання новини
function get_news() {
    global $conn;
    $sql = "SELECT * FROM news";
    $result = mysqli_query($conn, $sql);

    $news = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $news;
}

//кнопка "Переглянути"
function get_news_by_id ($news_id) {
    global $conn;
    $sql = "SELECT * FROM news WHERE id = ".$news_id;
    $result = mysqli_query($conn, $sql);

    $new = mysqli_fetch_assoc($result);
    return $new;
}
?>