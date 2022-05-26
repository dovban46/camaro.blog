<?php
include "database/function.php";
?>
<!doctype html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Camaro</title>
    <link rel="icon" href="../img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<div class="fixed-top">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="../index.php">
            <img src="img/logo.png" alt="" width="35" height="35" class="d-inline-block align-text-top">
            Camaro
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <?php
                $menus = get_menu();
                ?>
                <?php foreach ($menus as $menu):?>
                    <li class="nav-item active">
                        <a class="nav-link" href="category.php?category_id=<?=$menu['id'];?>"><?=$menu['title']?></a>
                    </li>
                <?php endforeach;?>
            </ul>

            <form class="form-inline my-2 my-lg-0">
                <a class="btn btn-danger" href="../login/index.php" role="button">Вхід/Реєстрація</a>
            </form>
        </div>
    </nav>
</div>

