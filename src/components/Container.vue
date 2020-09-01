<template>
  <div class="container" @wheel.prevent="onWheelDebounced">
    <div class="polygon3d" :style="polygonStyle">
      <div class="face face_1">
        <home :animate="animate.home" />
      </div>
      <div class="face face_2">
        <about :animate="animate.about" />
      </div>
      <div class="face face_3">
        <portfolio :animate="animate.portfolio" />
      </div>
      <div class="face face_4">
        <blogs :animate="animate.blogs" />
      </div>
      <div class="face face_5">
        <contact :animate="animate.contact" />
      </div>
    </div>
  </div>
</template>

<script>
import Home from '~src/sections/home/Home.vue';
import About from '~src/sections/about/About.vue';
import Portfolio from '~src/sections/portfolio/Portfolio.vue';
import Blogs from '~src/sections/blogs/Blogs.vue';
import Contact from '~src/sections/contact/Contact.vue';
import _ from 'lodash';

const pages = ['home', 'about', 'portfolio', 'blogs', 'contact'];

export default {
  mounted() {
    window.addEventListener('keyup', this.onKeyPress);
    this.onWheelDebounced = _.debounce(this.onWheel, 100, { leading: true, trailing: false });
  },
  data() {
    return {
      scrollCount: 0,
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
      this.scrollCount += 1;
      this.setAnimation();
    },
    onScrollUp() {
      this.scrollCount -= 1;
      this.setAnimation();
    },
    setAnimation() {
      this.animate[this.page] = true;
    },
    goToPage(pageIdx) {
      this.scrollCount = this.scrollCount - (this.scrollCount % pages.length) + pageIdx;
      this.setAnimation();
    }
  },
  computed: {
    page() {
      let idx = Math.abs(this.scrollCount) % pages.length;
      if (this.scrollCount < 0) {
        idx = pages.length - idx;
      }
      return pages[idx];
    },
    polygonStyle() {
      return {
        transform: `translateZ(-68.8vh) rotateX(${this.scrollCount * 72}deg)`
      };
    }
  },
  provide() {
    return {
      goToPage: this.goToPage,
    };
  },
  components: {
    Home,
    About,
    Portfolio,
    Blogs,
    Contact,
  }
}
</script>

<style lang="scss" scoped>
.container {
  width: 100%;
  height: 100vh;
  perspective: 300vh;
}

.polygon3d {
  height: 100%;
  width: 100%;
  transform-style: preserve-3d;
  transform: translateZ(-68.8vh);
  transition: transform 1s ease-in-out;
}

.face {
  position: absolute;
  display: block;
  width: 100%;
  height: 100vh;
  font-size: 40px;
}

.face_1 {
  transform: rotateX(0deg) translateZ(68.8vh);
}

.face_2 {
  transform: rotateX(-72deg) translateZ(68.8vh);
}

.face_3 {
  transform: rotateX(-144deg) translateZ(68.8vh);
}

.face_4 {
  transform: rotateX(-216deg) translateZ(68.8vh);
}

.face_5 {
  transform: rotateX(-288deg) translateZ(68.8vh);
}
</style>
