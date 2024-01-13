<template>
  <div class="container mt-5">
    <div class="row d-flex justify-content-center" v-for="(article, index) in articles" :key="index">
      <SoCCard :article="article" :isAdmin="isAdmin"/>
    </div>
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
  created() {
    const store = useAppStore();
    console.log('allSoCClanok:', store.allSoCClanok);
    console.log('allSoCs:', store.allSoCs);
  },
};
</script>


  
  
  