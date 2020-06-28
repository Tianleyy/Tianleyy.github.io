<template>
  <div class="home">
    <div class="box">
      <div class="item">上</div>
      <div class="item">下</div>
      <div class="item">左</div>
      <div class="item">右</div>
      <div class="item">前</div>
      <div class="item">后</div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Home'
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
.box {
  width: 500px;
  height: 500px;
  transform-style: preserve-3d;
  background-color: aqua;
}
</style>
