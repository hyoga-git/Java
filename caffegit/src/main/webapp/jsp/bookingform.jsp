<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<jsp:useBean id="beanCaffe" scope="request" class="bean.BeanCaffe" />
 
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

<section class="bokking-container">
    <h2>予約内容</h2>
    
    <form action="/caffegit/complete" method="POST" class="booking_form"id="form1">
    
    <h3>お名前</h3>
    <input type="text" name="name"placeholder="名前を入力してください">
   
    <h3>予約日</h3>
    <p><jsp:getProperty name="beanCaffe" property="day" /></p>
    <input type="hidden" name="days" value="<jsp:getProperty name="beanCaffe" property="day" />" checked>
    
    
    
    <div>
    <h3>予約する時間</h3>
	<input type="radio" name="times" value="朝/9:00" id="morning"　checked>
	<label for="morning">朝/9:00</label>
	</div>
	
	<div>
	<input type="radio" name="times" value="昼/13:00" id="noon">
	<label for="noon">昼/13:00</label>
	</div>
	
<h3>予約される人数</h3>
    
	<select name="number">
	<option value="1人">1人</option>
	<option value="2人">2人</option>
	<option value="3人">3人</option>
	<option value="4人">4人</option>
	<option value="5人以上">5人以上</option>
	</select>
	
	<h3>お子様の人数</h3>
	
	<div>
	<input type="radio" name="kids" value="0人" id="zero"　checked>
	<label for="zero">0人</label>
	</div>
	
	<div>
	<input type="radio" name="kids" value="1人" id="one">
	<label for="one">1人</label>
	</div>
	
	<div>
	<input type="radio" name="kids" value="2人" id="two">
	<label for="two">2人</label>
	</div>
	
	<div>
	<input type="radio" name="kids" value="3人" id="three">
	<label for="three">3人以上</label>
  	</div>
	 
	 
    <button type="submit" id="bookingsub">この内容で予約する</button>
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

    document.querySelector("#bookingsub").addEventListener("click", function(e) {
        e.preventDefault();
      	
           const selected = document.querySelector('#form1');
           const times=selected.times.value;
           const number=selected.number.value; 
           const kids=selected.kids.value;
		   const name=selected.name.value
           	
			console.log(times);
			console.log(number);
			console.log(kids);
			console.log(name);

			
    const message = 
        "この内容でよろしいでしょうか。\n"+
        "ご予約される方: " + name + "様\n" +
        "予約日:<jsp:getProperty name="beanCaffe" property="day" />\n"+
        "予約時間: " + times + "\n" +
        "予約人数: " + number + "\n" +
        "お子様の人数: " + kids;
				  			  
		
			 const userconfirmed = confirm(message);
        

        if (userconfirmed) {
            // フォームの値を個別に取得
            
            // 値をコンソールに出力して確認
          
            
            // フォーム送信
            document.querySelector("form").submit();
        } else {
            alert("もう一度入力してください。");
       
        }
    });


    </script>
    
</body>
</html>