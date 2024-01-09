<template>
  <div class="container mt-5">
  <div class="row d-flex justify-content-center" v-for="(article, index) in articles" :key="index">
    <div class="card mt-5 mb-3" style="max-width: 540px;">
      <img :src="article.clanok_obrazok" class="card-img-top" alt="SoC image">
      <div class="card-body">
        <h5 class="card-title">{{ article.nadpis }}</h5>
        <p class="card-text">{{ article.text }}</p>
        <router-link :to="'/specs/' + article.id_soc" class="btn custom-button-color custom-button-margin">Čítat ďalej</router-link>
      </div>
    </div>
  </div>
</div>
</template>

<script lang="ts">
import { computed } from 'vue';
import { useAppStore } from '../stores/store'; // Import your store

export default {
  name: 'SocView', // Replace with your actual component name
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

  
  
  