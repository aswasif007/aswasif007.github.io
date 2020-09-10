<template>
  <bio-framework
    class="pg-portfolio"
    label="Portfolio"
    :animate="animate"
    :msgFragments="msgFragments"
    :cta="cta">
    <template v-slot:showcase>
      <div class="cards">
        <card class="card"
          title="pyjs"
          :tags="['Python', 'Node']"
          logoName="pyjs"
          large
        />
      </div>
    </template>
  </bio-framework>
</template>

<script>
import BioFramework from '~src/components/BioFramework.vue';
import Card from '~src/components/Card.vue';

export default {
  created() {
    this.lastScrollTop = 0;
  },
  components: {
    BioFramework,
    Card,
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
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-portfolio {
  position: relative;

  .cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

  .card {
    margin: 8px;
  }
}
</style>
