<template>
  <bio-framework
    class="pg-about"
    label="About"
    :animate="animate"
    :msgFragments="msgFragments"
    :cta="cta">
    <template v-slot:showcase>
      <fragment>
        <fragment v-for="{ setName, skills } in skillSets" :key="setName">
          <div class="set">
            {{ setName }}
          </div>
          <div class="pills">
            <span v-for="skill in skills" :key="skill" class="pill">
              {{ skill }}
            </span>
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
  components: {
    BioFramework,
    Fragment,
  },
  props: {
    animate: { type: Boolean, default: false },
  },
  computed: {
    skillSets() {
      return [
        { setName: 'Languages', skills: ['C++', 'Javascript', 'Python', 'HTML', 'CSS'] },
        { setName: 'UI Design', skills: ['Figma', 'Gravit', 'AdobeIllustrator']},
        { setName: 'Frontend Coding', skills: ['React', 'Vue', 'Electron']},
        { setName: 'Backend Coding', skills: ['Django', 'Flask', 'Express', 'Node', 'MySQL', 'Mongo', 'ElasticSearch']},
        { setName: 'Deployment Techs', skills: ['AWS', 'Jenkins', 'Ansible', 'Docker']},
      ];
    },
    cta() {
      return { name: 'Resume', url: '../../static/resume.pdf', logo: 'resume' };
    },
    msgFragments() {
      return [
        'I\'m a',
        'Fullstack Developer',
      ];
    },
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-about {
  position: relative;

  .pills {
    margin: 4px 0 16px 0;

    span {
      background: $coppar-crayola;
      font-family: 'Ubuntu Mono';
      font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)) - 2px);
      display: inline-block;
      padding: 4px 8px;
      border-radius: 3px;
      margin: 4px;
      font-weight: bold;
    }
  }

  .set {
    color: $coppar-crayola;
    font-weight: bold;
    border-bottom: 1px solid $coppar-crayola;
  }
}
</style>
