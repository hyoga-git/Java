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
        <form action="/caffegit/form"method="POST">
        <div id="calendar"></div> 
		
        </form>
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