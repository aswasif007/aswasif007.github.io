<template>
  <div class="pg-home">
    <div class="dark-layer"></div>
    <div class="content">
      <nav-bar />
      <div class="middle">
        <p>Not</p>
        <p>Just</p>
        <p>Another</p>
        <p class="profession">Software Engineer</p>
      </div>
      <div class="bottom">
        <p class="tagline">
          Your Idea + My Magic = Creative Marvel
        </p>
      </div>
    </div>
  </div>
</template>

<script>
import NavBar from '@src/components/NavBar.vue';

export default {
  components: {
    NavBar,
  }
}
</script>

<style lang="scss">
@import "src/_variables.scss";

.pg-home {
  width: 100%;
  height: 100vh;
  background-image: url('../../static/background.webp');
  background-size: 100% auto;
  animation: infinite-scroll 240s linear 0s infinite alternate-reverse;

  .dark-layer {
    background-color: black;
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

    .middle {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: center;
      flex-direction: column;
      font-family: 'Rakkas';
      text-align: center;

      p {
        position: absolute;
        width: 100%;
        font-size: $home-slogan-font;
        font-family: 'Quintessential';
        animation: show-up 0.5s ease 0s 2 alternate;

        &.profession {
          font-size: $home-profession-font;
          text-shadow: 0 0 30px black;
          color: $pink;
          font-family: 'Rakkas';
        }

        &:nth-child(1) {
          animation-delay: 1s;
          opacity: 0;
        }

        &:nth-child(2) {
          opacity: 0;
          animation-delay: 2s;
        }

        &:nth-child(3) {
          opacity: 0;
          animation-delay: 3s;
        }

        &:nth-child(4) {
          opacity: 0;
          animation-delay: 4s;
          animation-fill-mode: forwards;
          animation-iteration-count: 1;
        }
      }
    }

    .bottom {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      text-align: center;
      padding: 40px;
      font-family: 'Rakkas';

      .tagline {
        opacity: 0;
        font-size: $home-tagline-font;
        text-shadow: 0 0 10px black;
        display: inline-block;
        animation: show-up 0.5s ease 5s 1 normal forwards;
      }
    }
  }
}
</style>
