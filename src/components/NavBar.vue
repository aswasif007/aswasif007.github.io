<template>
  <div class="nav-bar">
    <div class="logo">
      <img src="../../static/sw.svg" alt="">
    </div>
    <div class="menu">
      <div class="label">{{ label }}</div>
      <div class="menu-icon">
        <img src="../../static/menu.svg" alt="">
        <div class="dropdown">
          <span @click.stop="goToPage(0)">Home</span>
          <span @click.stop="goToPage(1)">About</span>
          <span @click.stop="goToPage(2)">Portfolio</span>
          <span @click.stop="goToPage(3)">Blogs</span>
          <span @click.stop="goToPage(4)">Contact</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    showName: { type: Boolean, default: true },
    label: { type: String, default: '' },
  },
  inject: {
    goToPage: { type: Function },
  }
}
</script>

<style lang="scss" scoped>
@import 'src/_variables.scss';

.nav-bar {
  font-size: calc(var(--topbar-font) * var(--ss-ratio));
  font-family: 'Rakkas';
  line-height: calc(72px * var(--ss-ratio));
  margin: calc(20px * var(--ss-ratio)) calc(40px * var(--ss-ratio));
  color: $tea-green;
  display: flex;
  position: relative;

  .logo, .menu-icon, .label {
    display: flex;

    img {
      height: calc(var(--nav-icon-width) * var(--ss-ratio));
      width: calc(var(--nav-icon-width) * var(--ss-ratio));
    }
  }

  .menu {
    display: flex;
    position: absolute;
    right: 0;
  }

  .label {
    margin-right: calc(20px * var(--ss-ratio));
    line-height: calc(var(--nav-icon-width) * var(--ss-ratio));
  }

  .dropdown {
    position: fixed;
    font-size: var(--bio-font);
    color: $tea-green;
    background: rgba($color: $capuut-mortuum, $alpha: 0.95);
    right: 0;
    top: 0;
    height: 100%;
    padding: calc(40px * var(--ss-ratio));
    z-index: 100;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transform: translateX(100%);
    opacity: 0;
    transition: all 0.7s ease;

    span {
      display: block;
      transition: color 0.4s ease-out;
      text-align: right;

      &:hover {
        cursor: pointer;
      }
    }
  }

  .menu-icon:hover {
    cursor: pointer;
    .dropdown {
      transform: translateX(0%);
      opacity: 1;
    }
  }
}
</style>