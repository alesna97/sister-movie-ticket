<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
.separator img {
  background: #eee;
  max-width: 100%;
  vertical-align: middle;
  background-position: middle;
  border: 0;
  height: 100%;
  width: 100%;
}

.next-wrap img,
.next-wrap video,
.next-wrap object {
  max-width: 100%
}

.next-wrap {
  position: relative;
  max-width: 728px;
  margin: 8% auto;
  padding: 20px 20px 80px 20px;
  background: #fff;
  font-size: 1em;
  line-height: normal;
  border-radius: 10px;
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.1);
}

.next-wrap h1,
.next-wrap h2 {
  display: block;
  text-align: center;
  margin-bottom: 30px;
  font-size: 2rem;
  font-weight: 700;
}

.next-wrap h2 {
  margin-top: 30px;
}

.instruction {
  display: block;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.slidecontentWrap {
  width: 1000%;
}

.slidecontent {
  float: left;
  width: 10%;
  font-size: 16px;
  line-height: 161%;
  overflow: hidden;
}

.movepg {
  display: none;
  position: absolute;
  bottom: 20px;
  color: #fff;
  font-weight: 700;
  text-transform: uppercase;
  padding: 6px 12px;
  cursor: pointer;
  font-size: 80%;
  outline: none;
  border-radius: 3px;
  transition: background .6s;
}


.movepg.prever {
  left: 20px;
}

.movepg.nexter {
  right: 20px;
}
</style>
<div class="next-wrap">
  <div id="photocons" class="instruction">
    <div class="slidecontentWrap">

      <div class="slidecontent">
        <div class="card-header text-center">
          <img alt="Membagi Konten Artikel Menjadi Beberapa Halaman" src="https://image.movieglu.com/279424/279424h1.jpg"/>
          <br/>
          <br/>
        </div>
        <div class="text-dark">
            <p>
                A planet destroyed, a powerful race reduced to nothing. After the devastation of Planet Vegeta, three Saiyans were scattered among the stars, destined for different fates. While two found a home on Earth, the third was raised with a burning desire for vengeance and developed an unbelievable power. And the time for revenge has come. Destinies collide in a battle that will shake the universe to its very core!

                Goku is back to training hard so he can face the most powerful foes the universes have to offer, and Vegeta is keeping up right beside him. But when they suddenly find themselves against an unknown Saiyan, they discover a terrible, destructive force.
            </p>
        </div>
     </div>

      <div class="slidecontent">
        <div class="card-header text-center">
          <img src="https://image.movieglu.com/277854/277854h1.jpg" />
          <br/>
          <br/>
        </div>
        <div class="text-dark">
            <p>
                FREE SOLO is an edge-of-your seat thriller and an inspiring portrait of an athlete who challenges both his body and his beliefs on a quest to triumph over the impossible, revealing the personal toll of excellence. As the climber begins his training, the armor of invincibility hes built up over decades unexpectedly breaks apart when Honnold begins to fall in love, threatening his focus and giving way to injury and setbacks. Vasarhelyi and Chin succeed in beautifully capturing deeply human moments with Honnold as well as the death-defying climb with exquisite artistry and masterful, vertigo-inducing camerawork.
            </p>
        </div>
     </div>

      <div class="slidecontent">
        <div class="card-header text-center">
          <img src="https://image.movieglu.com/267184/267184h1.jpg" />
          <br/>
          <br/>
        </div>
        <div class="text-dark">
            <p>
                Based on the best-selling pair of memoirs from father and son David and Nic Sheff, Beautiful Boy chronicles the heartbreaking and inspiring experience of survival, relapse, and recovery in a family coping with addiction over many years.
            </p>
        </div>
     </div>

      <div class="slidecontent">
        <div class="card-header text-center">
          <img src="https://image.movieglu.com/264825/264825h1.jpg" />
          <br/>
          <br/>
        </div>
        <div class="text-dark">
            <p>
                Based on the best-selling pair of memoirs from father and son David and Nic Sheff, Beautiful Boy chronicles the heartbreaking and inspiring experience of survival, relapse, and recovery in a family coping with addiction over many years.
            </p>
        </div>
     </div>

        <div class="slidecontent">
        <div class="card-header text-center">
          <img src="https://image.movieglu.com/180055/180055h1.jpg" />
          <br/>
          <br/>
        </div>
        <div class="text-dark">
            <p>
                The Grinch tells the story of a cynical grump who goes on a mission to steal Christmas, only to have his heart changed by a young girls generous holiday spirit. Funny, heartwarming and visually stunning, its a universal story about the spirit of Christmas and the indomitable power of optimism.
            </p>
        </div>
     </div>
    </div>
  </div>
  <a class="movepg prever btn btn-success">prev</a>
  <a class="movepg nexter btn btn-success">next</a>
</div>
<br>
<script>
    var index = 0;
var maxIndex = 4;

function updateBtnState() {
  if (index == 0) {
    $('.prever').hide();
  } else {
    $('.prever').show();
  }
  if (index == maxIndex) {
    $('.nexter').hide();
  } else {
    $('.nexter').show();
  }
}
$('.nexter').on('click', function(e) {
  index++;
  if (index > maxIndex) {
    e.preverentDefault();
    return;
  }
  updateBtnState();
  var slidecontentWrap = $(this).parent().find('.slidecontentWrap'),
    slidecontentPercent = (-index * 100) + '%';
  slidecontentWrap.animate({
    marginLeft: slidecontentPercent
  }, 300);
});
$('.prever').on('click', function(e) {
  index--;
  if (index < 0) {
    e.preverentDefault();
    return;
  }
  updateBtnState();
  var slidecontentWrap = $(this).parent().find('.slidecontentWrap'),
    slidecontentPercent = (-index * 100) + '%';
  slidecontentWrap.animate({
    marginLeft: slidecontentPercent
  }, 300);
});
updateBtnState();
</script>