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
              <span v-for="skill in skills" :key="skill" class="pill">
                {{ skill }}
              </span>
              <p>
                I am a passionate and self-motivated professional with years of hands-on
                experience using React, Django and Flask to create and implement various
                software applications.
              </p>
              <p>  
                I enjoy being challenged and engaging with projects that require
                me to work outside my comfort zone and help me expand my knowledge
                base.
              </p>
              <p>Checkout my full resume <a href="/static/resume.pdf" target="blank">here</a>.</p>
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

export default {
  components: {
    NavBar,
    SectionFramework,
  },
  props: {
    animate: { type: Boolean, default: false },
  },
  computed: {
    skills() {
      return [
        'C++', 'Python', 'Javascript', 'Django', 'Flask',
        'Express', 'Node', 'React', 'Vue', 'Electron',
        'MySQL', 'MongoDB', 'ElasticSearch',
        'AWS', 'Jenkins', 'Ansible'
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
    height: calc(100% - 2px);
    text-align: left;
    font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)));
    font-family: 'PT Serif';
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: rgba($color: $coppar-crayola, $alpha: 0.95);
    color: $eerie-black;
    text-shadow: 0px 1px 0 $capuut-mortuum;
    z-index: 2;
    text-align: justify;
    padding: calc(40px * var(--ss-ratio));

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

  .pill {
    background: $eerie-black;
    font-family: 'Ubuntu Mono';
    font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)) - 2px);
    display: inline-block;
    padding: 4px 8px;
    color: $tea-green;
    border-radius: 3px;
    margin: 4px;
  }

  .sections {
    max-height: calc(100% - 200px);
    overflow: auto;
    opacity: 0;
    
  }

  .intro {
    position: relative;
    text-align: center;
    font-size: calc(var(--intro-font-big) * var(--ss-ratio));
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
    color: $coppar-crayola;

    p {
      font-family: 'PT Serif';
      display: inline-block;

      span {
        color: $tea-green;
        font-weight: 600;
      }
    }
  }

  .scroll-to-see {
    font-size: calc(var(--intro-subtitle-font) * var(--ss-ratio));
    color: rgba($color: $tea-green, $alpha: 0.8);
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
    font-size: calc(var(--intro-font-big) * var(--ss-ratio));
  }

  to {
    width: 50%;
    font-size: calc(var(--intro-font-small) * var(--ss-ratio));
  }
}
</style>
