<template>
    <div class="card mt-5 mb-3" style="max-width: 540px;">
      <img :src="article.clanok_obrazok" class="card-img-top" alt="SoC image">
      <div class="card-body">
        <h5 class="card-title">{{ article.nadpis }}</h5>
        <p class="card-text">{{ article.text }}</p>
        <router-link :to="'/specs/' + article.id_soc" class="btn custom-button-color custom-button-margin">Čítat ďalej</router-link>
      </div>
    </div>
  </template>
  
  <script lang="ts">
  export default {
    name: 'SoCCard',
    props: {
      article: {
        type: Object,
        required: true
      }
    }
  }
  </script>
  