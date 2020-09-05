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
              <div>
                <span v-for="skill in skills" :key="skill" class="pill">
                  {{ skill }}
                </span>
              </div>
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
    width: calc(100% - 2px);
    display: flex;
  }

  .skills {
    font-size: calc(var(--cover-letter-font) * max(0.7, var(--ss-ratio)));
    font-family: 'PT Serif';
    background: rgba($color: $coppar-crayola, $alpha: 0.95);
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
    height: calc(100% - 2 * 40px * var(--ss-ratio));
    margin: calc(40px * var(--ss-ratio));
    display: flex;
    flex-direction: column;
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
      font-family: 'PT Serif';
      display: inline-block;

      span {
        color: $tea-green;
        font-weight: 600;
      }
    }
  }
}

.animate {
  .skills {
    animation: grow 1s ease;
    animation-delay: 2s;
    animation-fill-mode: forwards;
  }

  .sections {
    animation: show-up 1s ease;
    animation-delay: 3s;
    animation-fill-mode: forwards;
  }

  .intro {
    animation: shrink 1s ease;
    animation-delay: 2s;
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
    to { height: 55%; }
  }

  @keyframes shrink {
    from {
      height: 100%;
      font-size: calc(var(--intro-font-big) * var(--ss-ratio));
    }

    to {
      height: 45%;
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
