<template>
  <div class="section-framework">
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
@import 'src/_variables.scss';

.section-framework {
  width: 100%;
  height: 100vh;
  background: rgba($ash, 0.9);
  background-size: 100% auto;
  text-shadow: 2px 2px 0px black;

  .content {
    width: 100%;
    height: 100%;
    position: absolute;
    color: white;
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
    font-family: 'Rakkas';
  }
}
</style>