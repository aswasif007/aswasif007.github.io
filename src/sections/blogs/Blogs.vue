<template>
  <bio-framework
    class="pg-blogs"
    label="Blogs"
    :animate="animate"
    :msgFragments="msgFragments"
    :cta="cta">
    <template v-slot:showcase>
      <div class="cards">
        <card class="card"
          title="Python in a Node app? Let’s play with Zerorpc!"
          :tags="['Python', 'Node']"
          logoName="pyjs"
        />
        <card class="card"
          title="A migration from Apache Solr to ElasticSearch"
          :tags="['Solr', 'ES', 'DataMigration']"
          logoName="solres"
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
      return { name: 'Medium', url: 'https://medium.com/@aswasif007' };
    },
    msgFragments() {
      return [
        'I',
        'write too',
        'sometimes',
      ];
    },
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-blogs {
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
