<template>
  <bio-framework
    class="pg-portfolio"
    label="Portfolio"
    :animate="animate"
    :msgFragments="msgFragments"
    :cta="cta">
    <template v-slot:showcase>
      <fragment>
        <fragment v-for="{ title, description, logo } in projects" :key="title">
          <div class="title">
            <div class="logo">
              <img :src="logo" alt="">
            </div>
            {{ title }}
          </div>
          <div class="description">
            {{ description }}
          </div>
        </fragment>
      </fragment>
    </template>
  </bio-framework>
</template>

<script>
import BioFramework from '~src/components/BioFramework.vue';
import Fragment from '~src/components/Fragment';

export default {
  created() {
    this.lastScrollTop = 0;
  },
  components: {
    BioFramework,
    Fragment,
  },
  props: {
    animate: { type: Boolean, default: false },
  },
  methods: {
    onSwipe(dir, e) {
      const el = this.$refs.skills;

      // Stop event if successfully scrolled.
      if (this.lastScrollTop !== el.scrollTop) {
        e.stopPropagation();
      }

      this.lastScrollTop = el.scrollTop;
    },
  },
  computed: {
    cta() {
      return { name: 'Github', url: 'https://github.com/aswasif007?tab=repositories' };
    },
    msgFragments() {
      return [
        'I',
        'design, build & deploy',
        'pixel-perfact apps',
      ];
    },
    projects() {
      return [
        {
          title: 'PyJs',
          description: 'A library to facilitate method invocation from a node module to a python module.',
          logo: '../../../static/pyjs.svg',
        },
        {
          title: 'Pi Academy Web',
          description: 'Pi Academy is an academic management system for institutions. This is its web app, which is built as a PWA with Vue. Checkout the demo.',
          logo: '../../../static/pyjs.svg',
        },
        {
          title: 'Pi Academy API',
          description: 'This is a RESTful api that encapsulates the data architecture of Pi Academy. Checkout the documentation.',
          logo: '../../../static/pyjs.svg',
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-portfolio {
  position: relative;

  .logo {
    // height: 100%;
    position: absolute;
    top: calc(var(--ss-ratio) * 4px);
    left: 0;
    bottom: calc(var(--ss-ratio) * 4px);

    img {
      height: 100%;
    }
  }

  .title {
    margin: calc(var(--ss-ratio) * 4px) 0;
    color: $coppar-crayola;
    font-weight: bold;
    border-bottom: 1px solid $coppar-crayola;
    font-size: 125%;
    padding: calc(var(--ss-ratio) * 4px) 0;
    padding-left: calc(max(0.7, var(--ss-ratio)) * 42px);
    position: relative;
    font-family: 'Sansation';
  }

  .description {
    margin: 4px 0 calc(var(--ss-ratio) * 32px) 0;
    color: $coppar-crayola;
    font-family: 'PT Serif';

    &:last-child {
      margin-bottom: 0;
    }
  }
}
</style>
