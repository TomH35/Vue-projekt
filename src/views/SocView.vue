<template>
  <div class="row d-flex justify-content-center" v-for="(article, index) in articles" :key="index">
    <div class="card mb-3" style="max-width: 540px;">
      <img :src="'data:image/jpeg;base64,' + article.clanok_image" class="card-img-top" alt="SoC image">
      <div class="card-body">
        <h5 class="card-title">{{ article.clanok_nadpis }}</h5>
        <p class="card-text">{{ article.clanok_text }}</p>
        <router-link :to="'/specs/' + article.soc_id_clanku" class="btn custom-button-color custom-button-margin">Čítat ďalej</router-link>
      </div>
    </div>
  </div>
</template>

  <script lang="ts">
  import { defineComponent, computed } from 'vue';
  import { useAppStore } from '../stores/store'; // Import your store
  
  export default defineComponent({
    setup() {
      const store = useAppStore(); // Use your store
  
      return {
        articles: computed(() => store.allSoCClanok), // Use allSoCClanok from your store
      };
    },
  });
  </script>
  
  
  