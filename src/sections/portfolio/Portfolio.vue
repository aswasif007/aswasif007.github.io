<template>
  <div class="pg-portfolio">
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
    font-size: $topbar-font;
  }

  .thumbnails {
    display: flex;
    justify-content: center;

    p {
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
</style>
