<template>
  <div class="pg-portfolio" :class="{ animate }">
    <section-framework>
      <template v-slot:top>
        <nav-bar label="Portfolio" />
      </template>
      <template v-slot:middle>
        <div class="body">
          <div class="skills" v-touch:swipe="onSwipe" ref="skills">
            <div class="sections">
              <div class="cards">
                <card class="card"
                  title="pyjs"
                  :tags="['Python', 'Node']"
                  logoName="pyjs"
                  large
                />
              </div>
            </div>
          </div>
          <div class="intro">
            <div class="intro-message">
              <p>I</p>
              <p>design, build & deploy</p>
              <p>pixel-perfact apps</p>
              <p class="line">pixel-perfact a</p><br>
              <a class="resume" href="https://github.com/aswasif007?tab=repositories" target="_blank">Github</a>
            </div>
          </div>
        </div>
      </template>
    </section-framework>
  </div>
</template>

<script>
import SectionFramework from '~src/components/SectionFramework.vue';
import NavBar from '~src/components/NavBar.vue';
import Card from '~src/components/Card.vue';

export default {
  created() {
    this.lastScrollTop = 0;
  },
  components: {
    SectionFramework,
    NavBar,
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
    skills() {
      return {
        lg: ['C++', 'Javascript', 'Python', 'HTML', 'CSS'],
        ui: ['Figma', 'Gravit', 'AdobeIllustrator'],
        fe: ['React', 'Vue', 'Electron'],
        be: ['Django', 'Flask', 'Express', 'Node', 'MySQL', 'Mongo', 'ElasticSearch'],
        dp: ['AWS', 'Jenkins', 'Ansible', 'Docker'],
      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import "src/_variables.scss";

.pg-portfolio {
  position: relative;

  .body {
    height: 100%;
    width: calc(100% - 2px);
    display: flex;
  }

  .skills {
    font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)));
    font-family: 'PT Serif';
    background: rgba($color: $opal, $alpha: 0.75);
    color: $eerie-black;
    text-align: justify;
    overflow: auto;

    p {
      margin-top: 16px;

      span {
        font-weight: 600;
      }
      
      a {
        text-decoration: none;
        font-weight: bold;
        color: $eerie-black;
      }
    }
  }

  .pills {
    margin: 4px 0 16px 0;

    span {
      background: $eerie-black;
      font-family: 'Ubuntu Mono';
      font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)) - 2px);
      display: inline-block;
      padding: 4px 8px;
      color: $coppar-crayola;
      border-radius: 3px;
      margin: 4px;
    }
  }

  .sections {
    height: calc(100% - 2 * 40px * var(--ss-ratio));
    margin: calc(40px * var(--ss-ratio));
    display: flex;
    flex-direction: column;
  }

  .set {
    font-weight: bold;
    border-bottom: 2px solid $eerie-black;
  }

  .intro {
    position: relative;
    text-align: center;
    font-size: calc(var(--intro-font-big) * var(--ss-ratio));
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  .intro-message {
    opacity: 0;
    display: inline-block;
    text-align: center;
    margin: 0 20px;
    color: $coppar-crayola;

    p {
      font-family: 'Rakkas';

      span {
        color: $tea-green;
        font-weight: 600;
      }
    }
  }

  .line {
    display: inline-block;
    color: transparent;
    line-height: 0;
    border-top: 2px solid $capuut-mortuum;
    opacity: 0;
  }

  .resume {
    opacity: 0;
    font-family: 'PT Serif';
    font-size: calc(var(--intro-subtitle-font) * var(--ss-ratio));
    color: $coppar-crayola;
    text-decoration: none;
    border: 1px solid $coppar-crayola;
    padding: 4px 8px;
    border-radius: 3px;
  }

  .cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

  .card {
    margin: 8px;
  }
}

.animate {
  .skills {
    animation: grow 1s ease;
    animation-delay: 1.3s;
    animation-fill-mode: forwards;
  }

  .sections, .line, .resume {
    animation: show-up 1s ease;
    animation-delay: 2.3s;
    animation-fill-mode: forwards;
  }

  .intro {
    animation: shrink 1s ease;
    animation-delay: 1.3s;
    animation-fill-mode: forwards;
  }

  .intro-message {
    animation: show-up 1s ease;
    animation-delay: 0.5s;
    animation-fill-mode: forwards;
  }
}

@media only screen and (min-width: 0) {
  .body {
    flex-direction: column-reverse;
  }

  .skills {
    width: 100%;
    height: 0%;
    z-index: 0;
  }

  .intro {
    width: 100%;
    height: 100%;
  }

  @keyframes grow {
    from { height: 0%; }
    to { height: 60%; }
  }

  @keyframes shrink {
    from {
      height: 100%;
      font-size: calc(var(--intro-font-big) * var(--ss-ratio));
    }

    to {
      height: 40%;
      font-size: calc(var(--intro-font-small) * var(--ss-ratio));
    }
  }

  @keyframes show-up {
    from { opacity: 1; }
    to { opacity: 1; }
  }
}

@media only screen and (min-width: 600px) {
  .body {
    flex-direction: row;
  }

  .skills {
    width: 0%;
    height: 100%;
    z-index: 1;
  }

  .sections {
    opacity: 0;
    justify-content: center;
  }

  .intro {
    width: 100%;
    height: 100%;
  }

  @keyframes grow {
    from { width: 0%; }
    to { width: 50%; }
  }

  @keyframes shrink {
    from {
      width: 100%;
      font-size: calc(var(--intro-font-big) * var(--ss-ratio));
    }

    to {
      width: 50%;
      font-size: calc(var(--intro-font-small) * var(--ss-ratio));
    }
  }

  @keyframes show-up {
    from { opacity: 0; }
    to { opacity: 1; }
  }
}
</style>
