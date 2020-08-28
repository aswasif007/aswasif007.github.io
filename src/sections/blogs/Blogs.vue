<template>
  <div class="pg-blogs" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar label="Blogs" />
      </template>
      <template v-slot:middle>
        <div class="body">
          <p class="title">I also write sometimes...</p>
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

.pg-blogs {
  position: relative;

  .title {
    font-size: $topbar-font;
    opacity: 0;
  }

  .thumbnails {
    display: flex;
    justify-content: center;

    p {
      transform: scale(0);
      width: 240px;
      height: 180px;
      border: 2px solid $light-pink;
      display: flex;
      text-align: center;
      justify-content: center;
      flex-direction: column;
      margin: 20px 10px;
      background: rgba($color: #c4c4c4, $alpha: 0.5);
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