<template>
  <div class="pg-portfolio" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar label="Portfolio" />
      </template>
      <template v-slot:middle>
        <div class="body">
          <p class="title">Meet some of my pets...</p>
          <div class="thumbnails">
            <p>To be updated</p>
            <p>To be updated</p>
            <p>To be updated</p>
          </div>
        </div>
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

.pg-portfolio {
  position: relative;

  .title {
    font-size: calc(var(--topbar-font) * var(--ss-ratio));
    opacity: 0;
    color: $coppar-crayola;
  }

  .thumbnails {
    display: flex;
    justify-content: center;
    font-size: 17px;
    font-family: 'PT Serif';

    p {
      transform: scale(0);
      width: 240px;
      height: 180px;
      border: 2px solid $coppar-crayola;
      display: flex;
      text-align: center;
      justify-content: center;
      flex-direction: column;
      margin: calc(20px * var(--ss-ratio)) calc(10px * var(--ss-ratio));
      background: rgba($color: $opal, $alpha: 0.4);
    }
  }
}

.animate {
  .title {
    animation: show-up 0.5s ease;
    animation-delay: 0.5s;
    animation-fill-mode: forwards;
  }

  .thumbnails {
    p {
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
