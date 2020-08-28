<template>
  <div class="container" :class="page" @wheel.prevent="onWheelDebounced">
    <home :animate="animate.home" />
    <about :animate="animate.about" />
  </div>
</template>

<script>
import Home from '~src/sections/home/Home.vue';
import About from '~src/sections/about/About.vue';
import _ from 'lodash';

const pages = ['home', 'about'];

export default {
  mounted() {
    window.addEventListener('keyup', this.onKeyPress);
    this.onWheelDebounced = _.debounce(this.onWheel, 100, { leading: true, trailing: false });
  },
  data() {
    return {
      pageIdx: 0,
      animate: { home: true },
    };
  },
  methods: {
    onWheel(e) {
      if (e.deltaY < 0) { this.onScrollUp(); }
      if (e.deltaY > 0) { this.onScrollDown(); }
    },
    onKeyPress(e) {
      if (e.key === 'ArrowUp') { this.onScrollUp(); }
      if (e.key === 'ArrowDown') { this.onScrollDown(); }
    },
    onScrollDown() {
      if (this.pageIdx < pages.length - 1) {
        this.pageIdx += 1;
        this.setAnimation();
      }
    },
    onScrollUp() {
      if (this.pageIdx > 0) {
        this.pageIdx -= 1;
        this.setAnimation();
      }
    },
    setAnimation() {
      this.animate[this.page] = true;
    }
  },
  computed: {
    page() {
      return pages[this.pageIdx];
    },
  },
  components: {
    Home,
    About,
  }
}
</script>

<style lang="scss" scoped>
.container {
  width: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  transition: top .7s ease-in-out;

  &.home {
    top: 0;
  }

  &.about {
    top: -100vh;
  }
}
</style>
