<template>
  <div class="container">
    <home />
    <about />
  </div>
</template>

<script>
import Home from '@src/sections/home/Home.vue';
import About from '@src/sections/about/About.vue';

export default {
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
}
</style>
