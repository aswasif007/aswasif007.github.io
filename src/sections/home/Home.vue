<template>
  <div class="pg-home">
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
  components: {
    NavBar,
    SectionFramework,
    Fragment,
  }
}
</script>

<style lang="scss">
@import "src/_variables.scss";

.pg-home {
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
      animation: show-up 0.5s ease 0s 2 alternate;

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
    animation: show-up 0.5s ease 5s 1 normal forwards;
    text-align: center;
  }
}
</style>
