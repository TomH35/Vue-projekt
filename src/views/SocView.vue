<template>
  <div class="container mt-5">
    <div class="row d-flex justify-content-center" v-for="(article, index) in articles" :key="index">
      <SoCCard :article="article" />
    </div>
  </div>
</template>

<script lang="ts">
import { computed } from 'vue';
import { useAppStore } from '../stores/store'; // Import your store
import SoCCard from '../components/SoCCard.vue'; // Import the SoCCard component

export default {
  name: 'SpecsView',
  components: {
    SoCCard
  },
  computed: {
    articles() {
      const store = useAppStore();
      return store.allSoCClanok;
    },
  },
  created() {
    const store = useAppStore();
    console.log('allSoCClanok:', store.allSoCClanok);
    console.log('allSoCs:', store.allSoCs);
  },
};
</script>


  
  
  