<template>
  <div class="pg-about">
    <div class="dark-layer"></div>
    <div class="content">
      <div class="top">
        <p class="fullname">
          Sayeed Wasif
        </p>
        <p class="menu">
          <span>About me</span>
          <span class="menu-icon">
            <img src="../../static/menu.svg" alt="">
          </span>
        </p>
      </div>
      <div class="middle">
        <div class="skills">
          <div class="sections">
            <p>
              <span class="header">Experience {</span><br>
              <span class="element">&nbsp;- NewsCred Inc. <span class="comment">/* 2017 - Present*/</span></span><br>
              <span class="info">&nbsp;&nbsp; Fullstack Software Engineer</span><br>
              <span class="header">}</span>
            </p>
            <p>
              <span class="header">Skills {</span><br>
              <span class="element">&nbsp;- C++, Python, Javascript</span><br>
              <span class="element">&nbsp;- React, Vue, Express, Node, Electron</span><br>
              <span class="element">&nbsp;- MySQL, MongoDB, ElasticSearch</span><br>
              <span class="element">&nbsp;- AWS, Jenkins, Ansible</span><br>
              <span class="element">&nbsp;- VSCode, Figma <span class="comment">/* Fav Tools ;) */</span></span><br>
              <span class="element">&nbsp;- Linux, Git</span><br>
              <span class="header">}</span>
            </p>
            <p>
              <span class="header">Education {</span><br>
              <span class="element">&nbsp;- Bangladesh University of Eng. & Tech.</span><br>
              <span class="info">&nbsp;&nbsp; BSc in CSE <span class="comment">/* 2013-2017 */</span></span><br>
              <span class="header">}</span>
            </p>
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
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style lang="scss">
@import "src/_variables.scss";

.pg-about {
  width: 100%;
  height: 100vh;
  background-image: url('../../static/background.webp');
  background-size: 100% auto;
  animation: infinite-scroll 240s linear 0s infinite alternate-reverse;

  .dark-layer {
    background: black;
    width: 100%;
    height: 100%;
    opacity: 0.4;
    position: absolute;
  }

  .content {
    width: 100%;
    height: 100%;
    position: absolute;
    color: white;
    z-index: 1;

    .top {
      font-size: 48px;
      font-family: 'Rakkas';
      line-height: 72px;
      margin: 20px 40px;
      text-shadow: 0 0 10px black;
      color: $extra-light-green;

      .fullname {
        display: inline-block;
      }

      .menu {
        float: right;

        span {
          display: inline-block;
        }

        .menu-icon {
          margin-bottom: -6px;
          margin-left: 16px;

          img {
            display: block;
            height: 40px;
            width: 40px;
          }
        }
      }
    }

    .middle {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: flex;

      .skills {
        width: 0%;
        height: 100%;
        animation: grow-width 1s ease;
        animation-delay: 2s;
        animation-fill-mode: forwards;
        text-align: left;
        font-size: 28px;
        font-family: 'Ubuntu Mono';
        display: flex;
        flex-direction: column;
        justify-content: center;
        background: rgba($color: $extra-dark-red, $alpha: 0.8);

        .sections {
          max-height: calc(100% - 200px);
          overflow: auto;
          opacity: 0;
          animation: show-up 0.5s ease;
          animation-delay: 3s;
          animation-fill-mode: forwards;
        }

        p {
          margin-left: 44px;
          padding: 32px;

          .header {
            color: $pink;
          }

          .comment {
            color: $gray;
          }

          .info {
            color: $faded-red;
          }

          .element {
            color: $light-red;
          }
        }
      }

      .intro {
        position: relative;
        text-align: center;
        font-size: 54px;
        width: 100%;
        height: 100%;
        animation: shrink-width 1s ease;
        animation-delay: 2s;
        animation-fill-mode: forwards;
        display: flex;
        flex-direction: column;
        justify-content: center;

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

            &.scroll-to-see {
              font-size: 20px;
              color: $light-red;
              opacity: 0;
              animation: show-up 0.5s ease;
              animation-delay: 4s;
              animation-fill-mode: forwards;
            }
          }

          animation: show-up 1s ease;
          animation-delay: 0.5s;
          animation-fill-mode: forwards;
        }
      }
    }
  }
}

@keyframes grow-width {
  from { width: 0%; }
  to { width: 50%; }
}

@keyframes shrink-width {
  from {
    width: 100%;
    font-size: 54px;
  }

  to {
    width: 50%;
    font-size: 36px;
  }
}

</style>
