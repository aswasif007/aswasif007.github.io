<template>
  <div id="app">
    <about></about>
  </div>
</template>

<script>
import Home from '@src/sections/home/Home.vue'
import About from '@src/sections/about/About.vue'

export default {
  name: 'app',
  components: {
    About
  }
}
</script>
