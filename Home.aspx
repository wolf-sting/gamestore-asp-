<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NeoArcade.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

<!-- SLIDESHOW AREA -->
<section class="slideshow"></section>




<!-- SIDE SOCIAL NAV BAR -->
<div class="wrapper">
  <ul>
    <li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a></li>
    <li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></li>
    <li class="instagram"><a href="https://www.instagram.com/"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
    <li class="youtube"><a href="https://www.youtube.com/"><i class="fa fa-youtube fa-2x"></i></a></li>
  </ul>
</div>













<!-- POPUP BOX -->

<div class="login-popup">
  <div class="box">
     <div class="img-area">
       <div class="img">
       </div>
       <h1 class="glow" ></h1>
     </div>
     <div class="form">
       <div class="close">&times;</div>
       <h1>Don't get left behind!
           Subscribe to our newsletters today!</h1>
       <form>
         <div class="form-group">
           <input type="text" placeholder="Enter your Name" class="form-control">
         </div>
         <div class="form-group">
           <input type="text" placeholder="Enter your Email Address" class="form-control">
         </div>
         <div class="form-group">
           <label><input type="checkbox">
             I agree to receive promotional offers relating to all NeoArcade games and services
           </label>
         </div>
         <button type="button" onclick="alert('Thank you for subscribing.')"class="btn">Subscribe</button>
       </form>
     </div>
  </div>
</div>

<!-- JAVASCRIPT for popup -->
<!-- <script src="popscript.js"></script> -->
<script>
  

  const loginPopup = document.querySelector(".login-popup");
  const close = document.querySelector(".close");


  window.addEventListener("load",function(){
 
   showPopup();
   // setTimeout(function(){
   //   loginPopup.classList.add("show");
   // },5000)

  })

  function showPopup(){
        const timeLimit = 5 // seconds;
        let i=0;
        const timer = setInterval(function(){
         i++;
         if(i == timeLimit){
          clearInterval(timer);
          loginPopup.classList.add("show");
         } 
         console.log(i)
        },1000);
  }


  close.addEventListener("click",function(){
    loginPopup.classList.remove("show");
  })


</script>













<!-- <hr style="border: 2px solid #3ccbf7;"> -->


<!-- GAME DIVISION AREA -->
<div class="FG">
  <h1><b style="color: #cd1fb6;">Featured</b> Games.</h1>
  
  <div class="container">
    
    <a href="game1.aspx">
    <div class="box">
      <div class="imgBox">
        <img style="left: 0px;" src="CSS/pic4/cpbi.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Cyberpunk 2077</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    </a>

    <a href="https://www.epicgames.com/store/en-US/product/watch-dogs-legion/home">
    <div class="box">
      <div class="imgBox">
        <img style="left: -120px;" src="CSS/pic4/wdl.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Watch dogs: Legion</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    </a>

    <a href="https://www.ea.com/games/apex-legends">
    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/ALP.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Apex Legends</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    </a>


    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/fc6.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Farcry 6</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>

    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/wrld.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Horizon Forbidden West</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    
    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/lol.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>League of Legends</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    
    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/nfsh.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Need for Speed<br>Heat</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    
    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/spider.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Spider-Man: <br>Miles Morales</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
    
    <a href="https://www.callofduty.com/blackopscoldwar">
    <div class="box">
      <div class="imgBox">
        <img style="left: -80px;" src="CSS/pic4/cod.jpg" >     <!--picture ADJUSTMENT -->
      </div>
      <div class="detail">
        <div class="cont">                   <!--content ON or ABOVE the picture-->
          <h2>Call of Duty:<br> Cold War</h2>
          <p>Official Site.</p>
        </div>
      </div>
    </div>
  </a>

  </div>
  
  <div class="btn">
  <a href="https://store.steampowered.com/" class="button">Latest Games</a>
  <br>
  <br>
  </div>
  
</div>







<!-- NEWS DIVISION AREA -->
<div class="LU">
  <h1><b style="color: #cd1fb6;">Latest</b> Updates.</h1>
  <div class="container">
    
    <a href="https://screenrant.com/mario-sports-game-rumor-early-2021-nintendo-switch/">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/mario.jpg">
      </div>
      <div class="content">
        <h3>New Mario Sports Game Rumored For Early 2021 Release</h3>
        <p>A recent leak claims that a new Mario sports game will be released early next year. 
          Recent months have seen a lot of Mario announcements thanks to the iconic plumber's 
          35th anniversary.
        </p>
      </div>
    </div>
    </a>

    <a href="http://www.breathecast.com/articles/final-fantasy-7-remake-release-date-news-first-part-to-be-released-in-early-2018-36116/">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/final.jpg">
      </div>
      <div class="content">
        <h3>'Final Fantasy 7' Remake Release Date News:</h3>
        <p>Final Fantasy 7 Remake" will come out in three parts. 
          The first part will reportedly be released sometime in 2018, 
          while the second and third parts will come in 2019 and 2020, 
          respectively.
        </p>
      </div>
    </div>
    </a>

    <a href="https://www.dailystar.co.uk/tech/gaming/zelda-breath-wild-2-job-20054599">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/n3.png">
      </div>
      <div class="content">
        <h3>Zelda Breath of the Wild 2 Leak teases good news for how sequel will improve on Switch.</h3>
        <p>It's a deliciously vague statement, but one that gives us an insight into how we're 
          going to see the core experience change a little bit: Nintendo notes that the new 
          Zelda game will offer “new gaming experiences that exceed those of the previous game”.
        </p>
      </div>
    </div>
    </a>
    
    <a href="https://news.google.com/topics/CAAqIQgKIhtDQkFTRGdvSUwyMHZNREZ0ZHpFU0FtVnVLQUFQAQ?oc=3&ceid=US:en">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/n4.jpg">
      </div>
      <div class="content">
        <h3>Play the Newest EA Games on Next Generation Consoles</h3>
        <p>The video game industry is an exciting place, especially when new hardware launches.
           Each new console generation is met with huge anticipation. In just one week’s time
        </p>
      </div>
    </div>
    </a>
    
    <a href="https://news.google.com/topics/CAAqIQgKIhtDQkFTRGdvSUwyMHZNREZ0ZHpFU0FtVnVLQUFQAQ?oc=3&ceid=US:en">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/n5.png">
      </div>
      <div class="content">
        <h3>EA Play Spotlight – October 2020</h3>
        <p>the next generation of consoles will be introduced to the world 
          and Electronic Arts has some great games ready for you to play 
          on the PlayStation®5 and Xbox Series X|S.
        </p>
      </div>
    </div>
    </a>

    <a href="https://news.google.com/topics/CAAqIQgKIhtDQkFTRGdvSUwyMHZNREZ0ZHpFU0FtVnVLQUFQAQ?oc=3&ceid=US:en">
    <div class="box">
      <div class="imgBox">
          <img src="CSS/pic3/n6.png">
      </div>
      <div class="content">
        <h3>Reminder of Our Expectations for Inclusive Play</h3>
        <p>Headlined by EA SPORTS™, Madden NFL 21 and FIFA 21 are set to deliver
           their most immersive and authentic experiences yet on Dec. 4th, and 
           we’re looking forward to sharing more details with you on both those
           games later this month
        </p>
      </div>
    </div>
    </a>
  
  </div>
  
  <div class="btn">
    <a href="https://www.theverge.com/games" class="button">Read More.</a>
    <br>
    <br>
    </div>
</div>






<!-- <div>
  <h1>TEXT-AREA-TEXT-AREA-TEXT-AREA-TEXT-AREA</h1>
  <h1>TEXT-AREA-TEXT-AREA-TEXT-AREA-TEXT-AREA</h1>
</div> -->










<!-- LOW BANNER AREA -->
<a href="#">
<div class="lowbanner"></div>
</a>





<!-- MOVING LOGO BAR -->
<marquee behaviour="scroll" scrollamount="30" scrolldelay="0s" direction="right">
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a>  
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a>
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a>  
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
  <a><b id="log1"> Neo</b><b id="log2">Arcade</b> </a> 
</marquee>










</asp:Content>
