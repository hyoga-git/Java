<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
    <h2>MENU</h2>
  
    <div class="slick-img">
        <ul class="slick"id="js-slick">
            <li><img src="./img/cake.jpg" alt=""></li>
            <li><img src="./img/cafesugar.jpg" alt=""></li>
            <li><img src="./img/icecoffee.jpg" alt=""></li>
          </ul>
        </div>

    <div class="tab">
        <ul class="tab__menu">
          <li class="tab__menu-item is-active" data-tab="01">FOOD</li>
          <li class="tab__menu-item" data-tab="02">DRINK</li>
      
        </ul>
        <div class="tab__panel">
          <div class="tab__panel-box tab__panel-box001 is-show" data-panel="01">
            <nav>
                <ul class="menu-text">
                <li>トースト(ジャム):¥300</li>
                <li>yy_マグカップケーキ:¥350</li>
                <li>yy_サンドウィッチ:¥400</li>
                <li>yy_シフォンケーキ:¥450</li>
                <li>yy_ブレックファーストセット:¥550</li>
                <li><small>※全てのメニューセット+100¥でセットでご提供できます。</small></li>
            </ul>
                
            
            </nav>
          </div>
          <div class="tab__panel-box tab__panel-box002" data-panel="02">
            <nav>
                <ul class="menu-text">
                <li>yy_コーヒー:¥300</li>
                <li>ミルク:¥350</li>
                <li>ミルクティー:¥450</li>
                <li>レモンティー:¥450</li>
                <li>ココア:¥450</li>
                <li><small>※全てのメニューHOT/COOLでご提供できます。</small></li>
                </ul>
                
            </nav>
          </div>
         
        </div>
      </div>













  

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