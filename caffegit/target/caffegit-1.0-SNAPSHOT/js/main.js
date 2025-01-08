const burger = document.querySelector(".burger");
const nav = document.querySelector(".nav-links");
const navLinks = document.querySelectorAll(".nav-links li");
const navheader = document.querySelector(".nav-header");


burger.addEventListener("click", () => {
    console.log("クラスを付与します");
    nav.classList.toggle("nav-active");

    navLinks.forEach((link, index) => {
        if (link.style.animation) {
            link.style.animation = "";
        } else {
            link.style.animation = `navLinksFade 0.3s ease forwards ${index / 4}s`;
        }
    });
    burger.classList.toggle("toggle")
});

window.addEventListener('scroll', ()=> {
    if(window.pageYOffset>=navheader.offsetTop){
        navheader.classList.add("sticky");

    }else{
        navheader.classList.remove("stycky");
    }
    
  });



$(".slick").slick({
    autoplay: true, //自動再生
    autoplaySpeed: 2000, //自動再生の速度
    arrows: true, //前へ・次への矢印ナビを表示
    dots: true, //ドット型のナビを表示
    infinite: true, //無限ループ
    fade:true,
    speed:500,
  });

  $(document).ready(function(){
    $(".nav-open").click(function(){
        $(this).next(".nav-content").slideToggle();
        $(this).toggleClass("active");
    });
});


const tabMenus = document.querySelectorAll('.tab__menu-item');
console.log(tabMenus);

// イベント付加
tabMenus.forEach((tabMenu) => {
  tabMenu.addEventListener('click', tabSwitch);
})

// イベントの処理
function tabSwitch(e) {

  // クリックされた要素のデータ属性を取得
  const tabTargetData = e.currentTarget.dataset.tab;
  // クリックされた要素の親要素と、その子要素を取得
  const tabList = e.currentTarget.closest('.tab__menu');
  console.log(tabList);
  const tabItems = tabList.querySelectorAll('.tab__menu-item');
  console.log(tabItems);
  // クリックされた要素の親要素の兄弟要素の子要素を取得
  const tabPanelItems = tabList.
  nextElementSibling.querySelectorAll('.tab__panel-box');
  console.log(tabPanelItems);

  // クリックされたtabの同階層のmenuとpanelのクラスを削除
  tabItems.forEach((tabItem) => {
    tabItem.classList.remove('is-active');
  })
  tabPanelItems.forEach((tabPanelItem) => {
    tabPanelItem.classList.remove('is-show');
  })

  // クリックされたmenu要素にis-activeクラスを付加
  e.currentTarget.classList.add('is-active');
  // クリックしたmenuのデータ属性と等しい値を持つパネルにis-showクラスを付加
  tabPanelItems.forEach((tabPanelItem) => {
    if (tabPanelItem.dataset.panel ===  tabTargetData) {
      tabPanelItem.classList.add('is-show');
    }
  })

}


const date = new Date();

// 現在の年と月を取得
const year = date.getFullYear();
const month = date.getMonth() + 1;  // 月は0ベースなので+1して表示用にする

// 1日の情報を取得
const firstDate = new Date(year, month - 1, 1);
const firstDay = firstDate.getDay();  // 曜日（0:日曜日, 1:月曜日, ..., 6:土曜日）を取得

// 月末の日付を取得
const lastDate = new Date(year, month, 0);
const lastDayCount = lastDate.getDate();  // 月末の日付（31など)





// 月のカレンダーを生成
let dayCount = 1;
let createHTML = "";
createHTML += `<h2 class="nowMonth">` + year + "/" + month + "</h2>";
createHTML += "<table>";
createHTML += "<tr>"; // 曜日のヘッダー行

const weeks = ["日", "月", "火", "水", "木", "金", "土"];
for (let i = 0; i < weeks.length; i++) {
  createHTML += "<td>" + weeks[i] + "</td>";  // 曜日を追加
}
createHTML += "</tr>";

// 日付を埋める
for (let n = 0; n < 6; n++) {  // 最大6行まで
  createHTML += "<tr>";

  for (let d = 0; d < 7; d++) {
    if (n === 0 && d < firstDay) {
      // 最初の行で、1日が来る前の空白
      createHTML += "<td></td>";
    } else if (dayCount > lastDayCount) {
      // 日付が月の最後の日を過ぎたら空白
      createHTML += "<td></td>";
    } else {
      // 日付を表示
      createHTML += `<td class="days"> 
      <button type="submit" class="${dayCount} day_button" name="bookingDay" value="${year}/${month}/${dayCount} ${weeks[d]}"> 
      ${dayCount}</button></td>`;
// ここで予約のhtmlのサイトに遷移するようにする
      dayCount++;
    }
  }

  createHTML += "</tr>";
  if (dayCount > lastDayCount) break;  // 最後の日に達したらループを抜ける
}

createHTML += "</table>";
document.querySelector("#calendar").innerHTML = createHTML;

console.log(createHTML);






