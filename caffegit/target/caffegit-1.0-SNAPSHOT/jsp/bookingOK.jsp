<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe</title>
    <link rel="stylesheet" href="./css/slick.css">
    <link rel="stylesheet" href="./css/slick-theme.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/menu.css">
    <link rel="stylesheet" href="./css/form.css">
    
</head>
<body>
    
    <header>
       
        <nav class="nav-header">
            <div class="logo">
                <h4><a href="./top">yy_cafe</a></h4>
                <ul class="nav-links">
                    <li><a href="./top">TOP</a></li>
                    <li><a href="./booking">Booking</a></li>
                    <li><a href="./top#news">NEWS</a></li>
                    <li><a href="./menu">MENU</a></li>
                    <li><a href="./top#access">ACCESS</a></li>
                    
                </ul>
            </div>
            
            <div class="burger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
    
        </nav>

        <div class="hero-container">
            <h1>yy_Cafe</h1>
        </div>  
      

       




    </header>


<main>
    <section id="comp">
        <h2> ${name}様の予約が完了しました。</h2>
        
        <a href="./top">TOPに戻る</a>
    </section>
</main>

<footer>
    <small>
        Copyright © 2023 yy_cafe All Rights Reserved.
    </small>
</footer>


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="./js/slick.min.js"></script>
    <script src="./js/main.js"></script>

</body>
</html>
