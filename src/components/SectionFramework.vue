<template>
  <div class="section-framework">
    <div class="dark-layer"></div>
    <div class="content">
      <div class="top">
        <slot name="top"></slot>
      </div>
      <div class="middle">
        <slot name="middle"></slot>
      </div>
      <div class="bottom">
        <slot name="bottom"></slot>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
.section-framework {
  width: 100%;
  height: 100vh;
  background-image: url('../static/background.webp');
  background-size: 100% auto;
  animation: infinite-scroll 240s linear 0s infinite alternate-reverse;

  .dark-layer {
    background: black;
    width: 100%;
    height: 100%;
    opacity: 0.4;
    position: absolute;
  }

  .content {
    width: 100%;
    height: 100%;
    position: absolute;
    color: white;
    z-index: 1;
  }

  .middle {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    text-align: center;
    justify-content: center;
    flex-direction: column;
  }

  .bottom {
    position: absolute;
    bottom: 0;
    width: 100%;
    padding: 32px;
  }
}
</style>