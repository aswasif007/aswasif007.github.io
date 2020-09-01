<template>
  <div class="pg-about" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar label="About me" />
      </template>
      <template v-slot:middle>
        <div class="body">
          <div class="skills">
            <div class="sections">
              <bio label="Experience" :entries="experience" />
              <bio label="Skills" :entries="skills" />
              <bio label="Education" :entries="education" />
            </div>
          </div>
          <div class="intro">
            <div class="intro-message">
              <p>Hi</p><br>
              <p>I am <span>Wasif</span></p><br>
              <p>A full-time geek</p><br>
              <p>And part-time developer</p><br>
              <p class="scroll-to-see">Scroll to see some of my works!</p>
            </div>
          </div>
        </div>
      </template>
    </section-framework>
  </div>
</template>

<script>
import NavBar from '~src/components/NavBar.vue';
import SectionFramework from '~src/components/SectionFramework.vue';
import Bio from './Bio.vue';

export default {
  components: {
    NavBar,
    SectionFramework,
    Bio,
  },
  props: {
    animate: { type: Boolean, default: false },
  },
  computed: {
    experience() {
      return [
        { title: 'NewsCred Inc.', titleComment: '2017 - Present', subtitle: 'Fullstack Software Engineer' },
      ];
    },
    skills() {
      return [
        { title: 'C++, Python, Javascript' },
        { title: 'React, Vue, Express, Node, Electron' },
        { title: 'MySQL, MongoDB, ElasticSearch' },
        { title: 'AWS, Jenkins, Ansible', titleComment: 'Fav Tools ;)' },
        { title: 'VSCode, Figma' },
        { title: 'Linux, Git' },
      ];
    },
    education() {
      return [
        { title: 'Bangladesh University of Eng. & Tech.', subtitle: 'BSc in CSE', subtitleComment: '2013 - 2017' },
      ];
    }
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-about {
  position: relative;

  .body {
    height: 100%;
    width: 100%;
    display: flex;
  }

  .skills {
    width: 0%;
    height: 100%;
    text-align: left;
    font-size: $bio-font;
    font-family: 'Ubuntu Mono';
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: rgba($color: $extra-dark-red, $alpha: 0.8);
    text-shadow: none;
  }

  .sections {
    max-height: calc(100% - 200px);
    overflow: auto;
    opacity: 0;
  }

  .intro {
    position: relative;
    text-align: center;
    font-size: $intro-font-big;
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  .intro-message {
    opacity: 0;
    display: inline-block;
    text-align: center;
    margin: 0 20px;

    p {
      font-family: 'PT Serif';
      display: inline-block;

      span {
        color: $pink;
      }
    }
  }

  .scroll-to-see {
    font-size: $intro-subtitle-font;
    color: $light-pink;
    opacity: 0;
  }
}

.animate {
  .skills {
    animation: grow-width 1s ease;
    animation-delay: 2s;
    animation-fill-mode: forwards;
  }

  .sections {
    animation: show-up 0.5s ease;
    animation-delay: 3s;
    animation-fill-mode: forwards;
  }

  .intro {
    animation: shrink-width 1s ease;
    animation-delay: 2s;
    animation-fill-mode: forwards;
  }

  .intro-message {
    animation: show-up 1s ease;
    animation-delay: 0.5s;
    animation-fill-mode: forwards;
  }

  .scroll-to-see {
    animation: show-up 0.5s ease;
    animation-delay: 4s;
    animation-fill-mode: forwards;
  }
}

@keyframes grow-width {
  from { width: 0%; }
  to { width: 50%; }
}

@keyframes shrink-width {
  from {
    width: 100%;
    font-size: $intro-font-big;
  }

  to {
    width: 50%;
    font-size: $intro-font-small;
  }
}
</style>
