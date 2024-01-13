<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <Specs />
      </div>
      <div class="col-sm-6">
        <Specs />
      </div>
  </div>
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