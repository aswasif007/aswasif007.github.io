<template>
  <div class="pg-contact" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar label="Contact" />
      </template>
      <template v-slot:middle>
        <div class="body">
          <p class="title">Wanna reach out?</p>
          <div class="thumbnails">
            <a href="https://www.facebook.com/aswasif007" target="_blank">f</a>
            <a href="mailto: aswasif007@gmail.com" :style="{'padding-bottom': '6px'}">g</a>
            <a href="https://www.linkedin.com/in/aswasif007/" target="_blank">in</a>
          </div>
        </div>
      </template>
      <template v-slot:bottom>
        <p class="goodbye">
          Have a great day. Ciao!
        </p>
      </template>
    </section-framework>    
  </div>
</template>

<script>
import SectionFramework from '~src/components/SectionFramework.vue';
import NavBar from '~src/components/NavBar.vue';

export default {
  props: {
    animate: { type: Boolean, default: false },
  },
  components: {
    SectionFramework,
    NavBar,
  }
}
</script>

<style lang="scss" scoped>
@import 'src/_variables.scss';

.pg-contact {
  position: relative;

  .title {
    font-size: calc(var(--topbar-font) * var(--ss-ratio));
    opacity: 0;
  }

  .thumbnails {
    display: flex;
    justify-content: center;
    font-size: 17px;
    font-family: 'PT Serif';
    text-shadow: none;

    a {
      transform: scale(0);
      width: calc(60px * var(--ss-ratio));
      height: calc(60px * var(--ss-ratio));
      border: calc(6px * var(--ss-ratio)) solid $pink;
      display: flex;
      text-align: center;
      justify-content: center;
      flex-direction: column;
      margin: calc(20px * var(--ss-ratio)) calc(10px * var(--ss-ratio));
      font-size: calc(28px * var(--ss-ratio));;
      font-weight: bolder;
      color: $pink;
      text-decoration: none;
      border-radius: 50%;
      transition-property: color border-color;
      transition-duration: 0.3s;

      &:hover {
        border-color: $extra-light-green;
        color: $extra-light-green;
      }
    }
  }

  .goodbye {
    font-size: calc(36px * var(--ss-ratio));;
    text-align: center;
  }
}

.animate {
  .title {
    animation: show-up 0.5s ease;
    animation-delay: 0.5s;
    animation-fill-mode: forwards;
  }

  .thumbnails {
    a {
      animation: grow-up 0.4s ease;
      animation-fill-mode: forwards;

      &:nth-child(1) {
        animation-delay: 1s;
      }

      &:nth-child(2) {
        animation-delay: 1.4s;
      }

      &:nth-child(3) {
        animation-delay: 1.8s;
      }
    }
  }
}
</style>
