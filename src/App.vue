<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router';
import Navigation from './components/navigation.vue';
import Footer from './components/footer.vue';
import { useAppStore } from './stores/store'; // Change the import here

const appStore = useAppStore(); // Instantiate the store

// Now you can use appStore to access the store methods and state
appStore.fetchAllSoCs();
appStore.fetchAllSoCClanok();
</script>

<template>
  <header>
    <Navigation /> <!-- Use Navigation component -->
  </header>

  <RouterView /> <!-- Use RouterView to render the current route component -->

  <Footer /> <!-- Use Footer component -->
</template>


