<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
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
        <section class="one_word">
        <div class="concept_container">
            <p>心安らぐアジアンテイストの空間で</p>
            <p>リラックスしたひとときを</p>
            <p>至福の一杯と共に癒しの時間を</p>
            <span>yy_cafe</span>
        </div>
    </section>



    <section class="bokking-container">
        <h2>予約したい日を選択してください</h2>
    	<ul class="booking_ex">
    	<li>緑は予約できます。</li>
    	<li>黄色は予約出来る数が少ないです。</li>
    	<li>✖︎は予約ができません。</li>
    	</ul>
        <form action="/caffe/form"method="POST">
        <div id="calendar"></div> 
		
        </form>
    </section>
    









    <section id="news"class="news-container">
        <h2>NEWS</h2>
        <div class="slick-img">
            <ul class="slick"id="js-slick">
                <li><img src="./img/cafe.jpg" alt=""></li>
                <li><img src="./img/menu.jpg" alt=""></li>
                <li><img src="./img/icecoffee.jpg" alt=""></li>
              </ul>
            </div>
            <div class="news-table">
          <table>
         <tr class="tr-mb-none"><th>日付</th><th>内容</th></tr>
           <tr><th>2024/07/20</th><td><a href="">yyCafeリニューアルOPEN</a></td></tr>
            <tr><th>2024/06/10</th><td><a href="">yyCafe改修工事について</a></td></tr>
            <tr><th>2024/05/20</th><td><a href="">期間限定カフェラテ販売開始</a></td></tr>
          </table>
        </div>
          <a href="#"><p class="btn-view">ViewMore</p></a>
      

    </section>

    <section id="menu"class="menu-container">
        <h2>MENU</h2>
        <div class="slick-img">
            <ul class="slick"id="js-slick">
                <li><img src="./img/ice.png" alt="">
                </li>
                <li><img src="./img/morning.jpg" alt=""></li>
                <li><img src="./img/cake.jpg" alt=""></li>
              </ul>
            </div>
          
          <div class="menu-img-container">
            <img src="./img/ice.png" alt="">
            <div class="menu-container-coment">
                
            <p class="menu-title">yy_アイスコーヒー</p>
            <p class="menu-price">¥250</p>
            <p>特別に選び抜かれたコーヒー豆にオリジナルのブレンドを施し他では味わえない<br>
                独自の一杯をお届けしています。写真イメージはICEですがHOTもご提供できます。</p>
            <small>※Sサイズ-50円/Lサイズ+50円になります。</small>
        </div>
          </div>


          <div class="menu-img-container">
            <img src="./img/cake.jpg" alt="">
            <div class="menu-container-coment">
            <p class="menu-title">yy_シフォンケーキ</p>
            <p class="menu-price">¥450</p>
            <p>ふわふわの食感とやさしい甘さが自慢のシフォンケーキ<br>
                丁寧に焼き上げた当店オリジナル商品で至福のひとときをお楽しみください。</p>
            <small>※S〜Lサイズまでございます。詳しくはスタッフまで。</small>
        </div>
          </div>


          <div class="menu-img-container">
            <img src="./img/morning.jpg" alt="">
            <div class="menu-container-coment">
            <p class="menu-title">yy_ブレックファーストセット</p>
            <p class="menu-price">¥550</p>
            <p>08:00〜11:00まで限定朝食セット Sサイズドリンクが付いています。<br>
                週替わりで変更する当店オリジナルメニューで今週は写真の様なメニューです。</p>
            <small>ドリンクの種類はMENUをご覧ください。</small>
        </div>
          </div>


          <a href="../menu.html"><p class="btn-view btn-menu">ViewMore</p></a>
    </section>

    <section class="access-container">
        <h2 id="access">ACCESS</h2>
        <div class="access-iframe">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6562.943003690426!2d135.49727741165225!3d34.668047684850706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6000e713a809fffb%3A0x3c75dc98979ab527!2z6IG35qWt6KiT57e044Gu44Ki44OD44OXIOOBquOCk-OBsOagoQ!5e0!3m2!1sja!2sjp!4v1721566485606!5m2!1sja!2sjp" 
        width="600" height="450" style="border:0;" 
        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
        <table>
            <tr><th>営業時間</th><td> 08:00〜15:00</td></tr>
            <tr><th>定休日</th><td> 木曜日</td></tr>
            <tr><th>電話番号</th><td> 0120-XXXX-XXXX</td></tr>
            <tr><th>住所</th><td> 〒542-0076<br>大阪府大阪市中央区<br>
                難波２丁目１−２</td></tr>
          </table>
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
        <script>

        document.addEventListener("DOMContentLoaded", function () {
        	  // JSP から受け取った予約不可の日付
        	  let hairetu = [
        	    <% 
        	        if (request.getAttribute("days") != null) {
        	            List<String> days = (List<String>) request.getAttribute("days");
        	            for (int i = 0; i < days.size(); i++) {
        	                out.print("\"" + days.get(i) + "\"");
        	                if (i < days.size() - 1) {
        	                    out.print(", ");
        	                }
        	            }
        	        }
        	    %>
        	  ];

        	  console.log("予約不可の日付: ", hairetu);

        	  // ボタン要素をすべて取得
        	  const days = document.querySelectorAll(".days button");

        	  // 各ボタンに対して処理を行う
        	  days.forEach((dateLink) => {
        	    const dateValue = dateLink.value; // ボタンのvalue属性に日付（例: "2025/1/1"）が入っている前提

        	    // 配列 `hairetu` に含まれるかどうか確認
        	    const count = hairetu.filter(value => value === dateValue).length;

        	    if (count > 1) {
        	      // 出現回数が2回以上なら「unavailable」クラスを追加
        	      dateLink.classList.add("unavailable");
        	      dateLink.textContent = "×";
        	      dateLink.addEventListener("click", function (event) {
        	        event.preventDefault(); // デフォルト動作をキャンセル
        	        alert(dateValue + " は予約できません"); // 日付をアラートで表示
        	      });
        	    } else if (count === 1) {
        	      // 出現回数が1回なら「limited」クラスを追加
        	      dateLink.classList.add("limited");
        	      console.log(dateValue + " は予約される数少ない");
        	    } else {
        	      // 配列に含まれない場合「available」クラスを追加
        	      dateLink.classList.add("available");
        	      console.log(dateValue + " は予約できます");
        	    }
        	  });
        	});

               
        // サーバーサイドから取得したdaysをJavaScriptの配列に渡す

    </script>
    

</body>
</html>