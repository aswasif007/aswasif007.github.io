<template>
  <div id="app">
    <container />
  </div>
</template>

<script>
import Container from '~src/components/Container.vue'

export default {
  name: 'app',
  components: {
    Container,
  }
}
</script>

<style lang="scss" scoped>
@import 'src/_variables.scss';

#app {
  height: 100vh;
  width: 100%;
  position: absolute;
  overflow: hidden;
  background-color: $eclipse-red;
}

* {
  box-sizing: border-box;
}

body, p, div {
  margin: 0;
  padding: 0;
  display: block;
}

::-webkit-scrollbar {
  width: 8px;
  opacity: 0.2;
}

::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px rgba(210, 54, 4, 0.5); 
  border-radius: 8px;
}
 
::-webkit-scrollbar-thumb {
  background: rgba(210, 54, 4, 0.2);
  border-radius: 8px;
}

::-webkit-scrollbar-thumb:hover {
  background: rgba(210, 54, 4, 0.4);
}

@font-face {
  font-family: 'Rakkas';
  src: url('../static/Rakkas-Regular.ttf');
}

@font-face {
  font-family: 'Quintessential';
  src: url('../static/Quintessential-Regular.ttf');
}

@font-face {
  font-family: 'PT Serif';
  src: url('../static/PTSerif-Regular.ttf');
}

@font-face {
  font-family: 'Ubuntu Mono';
  src: url('../static/UbuntuMono-Regular.ttf');
}

@import 'src/_animations.scss';

</style>
