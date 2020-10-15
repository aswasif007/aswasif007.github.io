<template>
  <bio-framework
    class="pg-blogs"
    label="Blogs"
    :animate="animate"
    :msgFragments="msgFragments"
    :cta="cta">
    <template v-slot:showcase>
      <fragment>
        <fragment v-for="{ title, summary } in blogs" :key="title">
          <div class="title">
            {{ title }}
          </div>
          <div class="summary">
            {{ summary }}
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
      return { name: 'Medium', url: 'https://medium.com/@aswasif007' };
    },
    msgFragments() {
      return [
        'I',
        'write too',
        'sometimes',
      ];
    },
    blogs() {
      return [
        {
          title: 'Python in a Node app? Let’s play with Zerorpc!',
          summary: 'An experiment with python, node and zerorpc on cross-language application development.',
        },
        {
          title: 'A migration from Apache Solr to ElasticSearch',
          summary: 'Story of a large-scale data migration that I participated in as an enterprise software engineer.',
        }
      ];
    }
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-blogs {
  position: relative;

  .title {
    margin: calc(var(--ss-ratio) * 4px) 0;
    color: $coppar-crayola;
    font-weight: bold;
    border-bottom: 1px solid $coppar-crayola;
    font-size: 125%;
    padding: calc(var(--ss-ratio) * 4px) 0;
    position: relative;
    font-family: 'Sansation';
  }

  .summary {
    margin: 4px 0 calc(var(--ss-ratio) * 32px) 0;
    color: $coppar-crayola;
    font-family: 'PT Serif';

    &:last-child {
      margin-bottom: 0;
    }
  }
}
</style>
