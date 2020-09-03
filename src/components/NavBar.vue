<template>
  <div class="nav-bar">
    <p v-if="showName" class="fullname">
      Sayeed Wasif
    </p>
    <p class="menu">
      <span>{{ label }}</span>
      <span class="menu-icon">
        <img src="../../static/menu.svg" alt="">
        <div class="dropdown">
          <span @click.stop="goToPage(0)">Home</span>
          <span @click.stop="goToPage(1)">About</span>
          <span @click.stop="goToPage(2)">Portfolio</span>
          <span @click.stop="goToPage(3)">Blogs</span>
          <span @click.stop="goToPage(4)">Contact</span>
        </div>
      </span>
    </p>
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

  .fullname {
    display: inline-block;
  }

  .menu {
    float: right;

    span {
      display: inline-block;
    }

    .menu-icon {
      margin-bottom: calc(-6px * var(--ss-ratio));
      margin-left: 16px;
      z-index: 2;

      img {
        display: block;
        height: calc(var(--nav-icon-width) * var(--ss-ratio));
        width: calc(var(--nav-icon-width) * var(--ss-ratio));
      }
    }
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
        color: $opal;
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