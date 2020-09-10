<template>
  <a class="card" :href="url" target="_blank">
    <div class="upper" :class="{ large }">
      <p>{{ title }}</p>
    </div>
    <div class="lower">
      <p>Tags:</p>
      <p class="tags">
        <span v-for="tag in tags" :key="tag">{{ tag }}</span>
      </p>
    </div>
    <div class="logo">
      <img :src="`../../static/${logoName}.svg`" alt="">
    </div>
  </a>
</template>

<script>
export default {
  props: {
    title: { type: String },
    tags: { type: Array },
    logoName: { type: String },
    large: { type: Boolean },
    url: { type: String },
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.card {
  width: 250px;
  height: 200px;
  border-radius: 3px;
  position: relative;
  color: $coppar-crayola;
  font-size: 20px;
  font-family: 'Sansation';
  transition: transform 0.5s ease;
  text-decoration: none;

  .upper {
    height: calc(50% - 1px);
    background: rgba($color: $eerie-black, $alpha: 0.9);
    border-bottom: 1px solid $eerie-black;
    border-radius: 3px 3px 0 0;
    text-align: center;
    padding: 16px;
    padding-bottom: 32px;

    p {
      @include text-truncate(2);
    }
  }

  .lower {
    height: calc(50% - 1px);
    background: rgba($color: $eerie-black, $alpha: 0.85);
    border-top: 1px solid $eerie-black;
    padding: 16px;
    font-size: 18px;
    border-radius: 0 0 3px 3px;
  }

  .tags {
    font-size: 16px;
    margin-top: 12px;
    font-family: 'Ubuntu Mono';

    span {
      border: 1px solid;
      border-radius: 3px;
      padding: 2px 4px;
      margin-right: 4px;
    }
  }

  .logo {
    position: absolute;
    top: calc(50% - 28px);
    left: calc(50% - 28px);

    img {
      width: 56px;
      height: 56px;
    }
  }

  .large {
    font-size: 28px;
  }

  &:hover {
    transform: scale(1.1);
    cursor: pointer;
  }
}
</style>
