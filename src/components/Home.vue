<template>
  <div class="pg-home">
    <div class="dark-layer"></div>
    <div class="content">
      <div class="top">
        <p class="fullname">
          Sayeed Wasif
        </p>
      </div>
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
export default {

}
</script>

<style lang="scss">
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

    .top {
      font-size: 48px;
      font-family: 'Rakkas';
      line-height: 72px;
      margin: 20px 40px;

      .fullname {
        text-shadow: 0 0 10px black;
        color: #4FFFEA;
      }
    }

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
        font-size: 80px;
        font-family: 'Quintessential';
        animation: come-n-go 0.5s ease 0s 2 alternate;

        &.profession {
          font-size: 100px;
          text-shadow: 0 0 30px black;
          color: #FF4F8E;
          font-family: 'Rakkas';
        }

        &:nth-child(1) {
          opacity: 0;
        }

        &:nth-child(2) {
          opacity: 0;
          animation-delay: 1s;
        }

        &:nth-child(3) {
          opacity: 0;
          animation-delay: 2s;
        }

        &:nth-child(4) {
          opacity: 0;
          animation-delay: 3s;
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
        font-size: 30px;
        text-shadow: 0 0 10px black;
        display: inline-block;
        animation: come-n-go 0.5s ease 4s 1 normal forwards;
      }
    }
  }
}

@keyframes infinite-scroll {
  0% { background-position-y: 0; }
  100% { background-position-y: 100vh }
}

@keyframes come-n-go {
  from { opacity: 0 }
  to { opacity: 1; }
}
</style>
