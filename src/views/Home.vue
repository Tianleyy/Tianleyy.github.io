<template>
  <div class="home">
    <!--部署内外层图片-->
    <div class="cube">
      <!--前面图片 -->
      <div class="out_front">
        <img src="~@/assets/img/01.png" class="pic">
      </div>
      <!--后面图片 -->
      <div class="out_back">
        <img src="~@/assets/img/02.png" class="pic">
      </div>
      <!--左面图片 -->
      <div class="out_left">
        <img src="~@/assets/img/03.png" class="pic">
      </div>
      <!--右面图片 -->
      <div class="out_right">
        <img src="~@/assets/img/04.png" class="pic">
      </div>
      <!--上面图片 -->
      <div class="out_top">
        <img src="~@/assets/img/05.png" class="pic">
      </div>
      <!--下面图片 -->
      <div class="out_bottom">
        <img src="~@/assets/img/06.png" class="pic">
      </div>

      <!--小正方体 -->
      <span class="in_front">
        <img src="~@/assets/img/1.png" class="in_pic">
      </span>
      <span class="in_back">
        <img src="~@/assets/img/2.png" class="in_pic">
      </span>
      <span class="in_left">
        <img src="~@/assets/img/3.png" class="in_pic">
      </span>
      <span class="in_right">
        <img src="~@/assets/img/4.png" class="in_pic">
      </span>
      <span class="in_top">
        <img src="~@/assets/img/5.png" class="in_pic">
      </span>
      <span class="in_bottom">
        <img src="~@/assets/img/6.png" class="in_pic">
      </span>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Home',
  data () {
    return {
    }
  }
}
</script>

<style lang="scss" scoped>
.home {
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: url(~@/assets/img/home-bg.jpg) no-repeat center;
  background-size: auto 100%;
}
/*得到立方体效果*/
.cube {
  width: 50px;
  height: 50px;
  margin: 0 auto;
  transform-style: preserve-3d;
  /*设置动画播放样式:动画对象 播放速度 时间 播放次数*/
  animation: rotate linear 20s infinite;
}

/*动画旋转的方式*/
/*得到动画效果*/
@-moz-keyframes rotate {                     /*firefox*/
  from {
    transform: rotateX(0deg) rotateY(0deg);
  }
  to {
    transform: rotateX(360deg) rotateY(360deg);
  }
}
@-webkit-keyframes rotate {                /*sofari chrome*/
  from {
    transform: rotateX(0deg) rotateY(0deg);
  }
  to {
    transform: rotateX(360deg) rotateY(360deg);
  }
}
@-o-keyframes rotate {                    /*opera*/
  from {
    transform: rotateX(0deg) rotateY(0deg);
  }
  to {
    transform: rotateX(360deg) rotateY(360deg);
  }
}
/*每张图片的样式*/
.cube div {
  position: absolute;
  width: 200px;
  height: 200px;
  opacity: 0.8;
  /*过渡效果*/
  transition: all .4s;
}

/*定义所有图片样式*/
.pic {
  width: 200px;
  height: 200px;
}

.cube .out_front {
  transform: rotateY(0deg) translateZ(100px);
}

.cube .out_back {
  transform: translateZ(-100px) rotateY(180deg);
}

.cube .out_left {
  transform: rotateY(-90deg) translateZ(100px);
}

.cube .out_right {
  transform: rotateY(90deg) translateZ(100px);
}

.cube .out_top {
  transform: rotateX(90deg) translateZ(100px);
}

.cube .out_bottom {
  transform: rotateX(-90deg) translateZ(100px);
}

/*定义小正方体样式*/
.cube span {
  display: block;
  width: 100px;
  height: 100px;
  position: absolute;
  top: 50px;
  left: 50px;
}

.cube .in_pic {
  width: 100px;
  height: 100px;
}

.cube .in_front {
  transform: rotateY(0deg) translateZ(50px);
}

.cube .in_back {
  transform: translateZ(-50px) rotateY(180deg);
}

.cube .in_left {
  transform: rotateY(-90deg) translateZ(50px);
}

.cube .in_right {
  transform: rotateY(90deg) translateZ(50px);
}

.cube .in_top {
  transform: rotateX(90deg) translateZ(50px);
}

.cube .in_bottom {
  transform: rotateX(-90deg) translateZ(50px);
}

/*鼠标移入后样式*/
.cube:hover .out_front {
  transform: rotateY(0deg) translateZ(200px);
}

.cube:hover .out_back {
  transform: translateZ(-200px) rotateY(180deg);
}

.cube:hover .out_left {
  transform: rotateY(-90deg) translateZ(200px);
}

.cube:hover .out_right {
  transform: rotateY(90deg) translateZ(200px);
}

.cube:hover .out_top {
  transform: rotateX(90deg) translateZ(200px);
}

.cube:hover .out_bottom {
  transform: rotateX(-90deg) translateZ(200px);
}
</style>
