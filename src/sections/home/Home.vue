<template>
  <div class="pg-home" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar />
      </template>
      <template v-slot:middle>
        <div class="body">
          <div>
            <p class="profession">Sayeed Wasif</p>
            <p class="line"><span>Sayeed W</span></p>
            <p class="subtitle">Software Engineer</p>
          </div>
        </div>
      </template>
      <template v-slot:bottom>
        <p class="tagline">
          Design &nbsp;&nbsp;&bull;&nbsp;&nbsp; Build &nbsp;&nbsp;&bull;&nbsp;&nbsp; Deploy
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
    font-size: calc(var(--home-tagline-font) * var(--ss-ratio));
    font-family: 'Rakkas';
    color: $coppar-crayola;
  }

  .line {
    font-size: calc(var(--home-profession-font) * var(--ss-ratio));
    line-height: 0px;
    color: transparent;
    margin: 12px 0;

    span {
      border-top: 2px solid $capuut-mortuum;
      display: inline-block;
      user-select: none;
    }
  }

  .profession {
    font-size: calc(var(--home-profession-font) * var(--ss-ratio));
    color: $coppar-crayola;
    font-family: 'Rakkas';
    line-height: 120%;
  }

  .tagline {
    color: $opal;
    opacity: 0;
    font-size: calc(var(--home-tagline-font) * var(--ss-ratio));
    display: block;
    text-align: center;
  }
}

.animate {
  .body {
    p {
      animation: show-up 0.5s ease;
      animation-fill-mode: forwards;
    }
  }

  .tagline {
    animation: show-up 0.5s ease;
    animation-delay: 0.5s;
    animation-fill-mode: forwards;
  }
}
</style>
