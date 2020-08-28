<template>
  <div class="pg-home" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar />
      </template>
      <template v-slot:middle>
        <div class="slogan">
          <p>Not</p>
          <p>Just</p>
          <p>Another</p>
          <p class="profession">Software Engineer</p>
        </div>
      </template>
      <template v-slot:bottom>
        <p class="tagline">
          Your Idea + My Magic = Creative Marvel
        </p>
      </template>
    </section-framework>
  </div>
</template>

<script>
import NavBar from '@src/components/NavBar.vue';
import SectionFramework from '@src/components/SectionFramework.vue';
import Fragment from '@src/components/Fragment';

export default {
  props: {
    animate: { type: Boolean, default: false },
  },
  components: {
    NavBar,
    SectionFramework,
    Fragment,
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-home {
  position: relative;

  .slogan {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;

    p {
      position: absolute;
      width: 100%;
      font-size: $home-slogan-font;
      font-family: 'Quintessential';
      opacity: 0;
    }
  }

  .profession {
    font-size: $home-profession-font;
    text-shadow: 0 0 30px black;
    color: $pink;
    font-family: 'Rakkas' !important;
  }

  .tagline {
    opacity: 0;
    font-size: $home-tagline-font;
    text-shadow: 0 0 10px black;
    display: block;
    text-align: center;
  }
}

.animate {
  .slogan {
    p {
      animation: show-up 0.5s ease;
      animation-direction: alternate;
      animation-iteration-count: 2;

      &:nth-child(1) {
        animation-delay: 0.5s;
      }

      &:nth-child(2) {
        animation-delay: 1.5s;
      }

      &:nth-child(3) {
        animation-delay: 2.5s;
      }

      &:nth-child(4) {
        animation-delay: 3.5s;
        animation-fill-mode: forwards;
        animation-iteration-count: 1;
      }
    }
  }

  .tagline {
    animation: show-up 0.5s ease;
    animation-delay: 4.5s;
    animation-fill-mode: forwards;
  }
}
</style>
