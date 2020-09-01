<template>
  <div class="nav-bar">
    <p v-if="showName" class="fullname">
      Sayeed Wasif
    </p>
    <p class="menu">
      <span>{{ label }}</span>
      <span class="menu-icon">
        <img src="../../static/menu.svg" alt="">
      </span>
    </p>
  </div>
</template>

<script>
export default {
  props: {
    showName: { type: Boolean, default: true },
    label: { type: String, default: '' },
  }
}
</script>

<style lang="scss" scoped>
@import 'src/_variables.scss';

.nav-bar {
  font-size: $topbar-font;
  font-family: 'Rakkas';
  line-height: 72px;
  margin: 20px 40px;
  color: $extra-light-green;

  .fullname {
    display: inline-block;
  }

  .menu {
    float: right;

    span {
      display: inline-block;
    }

    .menu-icon {
      margin-bottom: -6px;
      margin-left: 16px;

      img {
        display: block;
        height: 40px;
        width: 40px;
      }
    }
  }
}
</style>