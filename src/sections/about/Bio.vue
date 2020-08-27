<template>
  <p class="bio">
    <span class="header">{{ label }} {</span><br>
    <fragment v-for="{ title, titleComment, subtitle, subtitleComment } in entries" :key="title">
      <span class="element">
        &nbsp;- {{ title }}
        <span v-if="titleComment" class="comment">/* {{ titleComment }} */</span>
      </span>
      <br>
      <span v-if="subtitle" class="info">
        &nbsp;&nbsp; {{ subtitle }}
        <span v-if="subtitleComment" class="comment">/* {{ subtitleComment }} */</span>
      </span>
      <br v-if="subtitle">
    </fragment>
    <span class="header">}</span>
  </p>
</template>

<script>
import Fragment from '@src/components/Fragment';

export default {
  props: {
    label: { type: String, },
    entries: { type: Array },
  },
  components: {
    Fragment,
  }
}
</script>

<style lang="scss">
@import "src/_variables.scss";

.bio {
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
</style>