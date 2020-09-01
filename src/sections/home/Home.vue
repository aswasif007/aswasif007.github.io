<template>
  <div class="pg-home" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar />
      </template>
      <template v-slot:middle>
        <div class="body">
          <p class="profession">Software Engineer</p>
          <p class="subtitle">And beyond!</p>
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
import NavBar from '~src/components/NavBar.vue';
import SectionFramework from '~src/components/SectionFramework.vue';
import Fragment from '~src/components/Fragment';

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

  .body {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;

    p {
      width: 100%;
      opacity: 0;
    }
  }

  .subtitle {
    font-size: $home-tagline-font;
    font-family: 'Quintessential';
  }

  .profession {
    font-size: $home-profession-font;
    color: $pink;
    font-family: 'Rakkas';
    line-height: 120%;
  }

  .tagline {
    opacity: 0;
    font-size: $home-tagline-font;
    display: block;
    text-align: center;
  }
}

.animate {
  .body {
    p {
      animation: show-up 0.5s ease;
      animation-fill-mode: forwards;

      &:nth-child(1) {
        animation-delay: 0.5s;
      }

      &:nth-child(2) {
        animation-delay: 1.5s;
        animation-duration: 1s;
      }
    }
  }

  .tagline {
    animation: show-up 0.5s ease;
    animation-delay: 1.5s;
    animation-fill-mode: forwards;
  }
}
</style>
