<template>
  <div id="app">
    <about></about>
  </div>
</template>

<script>
import Home from '@/sections/home/Home.vue'
import About from '@/sections/about/About.vue'

export default {
  name: 'app',
  components: {
    About
  }
}
</script>
