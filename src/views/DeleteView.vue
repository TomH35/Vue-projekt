<template>
    <div class="container mt-5">
      <div class="row d-flex justify-content-center" v-for="(article, index) in articles" :key="index">
        <SoCCard :article="article" :isAdmin="isAdmin" @delete="deleteArticle" />
      </div>
    </div>
    <div class="container text-center mt-5 mb-5">
      <router-link :to="{ name: 'adminPanel' }" class="nav-link">
            <span class="btn custom-button-color custom-button-margin">Back</span>
      </router-link>
    </div>
  </template>
  
  <script lang="ts">
  import { useAppStore } from '../stores/store';
  import { useAdminStore } from '../stores/adminLogin';
  import SoCCard from '../components/SoCCard.vue';
  
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
      isAdmin() {
        const adminStore = useAdminStore();
        return adminStore.isLoggedIn;
      }
    },
    methods: {
      deleteArticle(id_soc: string) {
        const store = useAppStore();
        store.deleteArticle(Number(id_soc));
      }
    },
    created() {
      const store = useAppStore();
      console.log('allSoCClanok:', store.allSoCClanok);
      console.log('allSoCs:', store.allSoCs);
    },
  };
  </script>
  
  