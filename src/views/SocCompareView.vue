<template>
  <div class="specs-container">
    <Specs />
    <Specs />
  </div>
</template>
  
  <script lang="ts">
  import Specs from '../components/Specs.vue';
  
  export default {
    components: {
      Specs,
    },
  };
  </script>
  <style scoped>
  .specs-container {
    display: flex;
    justify-content: space-between;
  }
  </style>