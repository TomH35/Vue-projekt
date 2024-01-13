<template>
  <div class="card mt-5 mb-3" style="max-width: 540px;">
    <img :src="article.clanok_obrazok" class="card-img-top" alt="SoC image">
    <div class="card-body">
      <h5 class="card-title">{{ article.nadpis }}</h5>
      <p class="card-text">{{ article.text }}</p>
      <div class="d-flex justify-content-between">
        <div>
      <router-link :to="'/specs/' + article.id_soc" class="btn custom-button-color custom-button-margin">Specifications</router-link>
        </div>
        <div>
      <button v-if="isAdmin" class="btn btn-danger" @click="deleteArticle">Delete</button>
      </div>
    </div>
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
    },
    isAdmin: {
      type: Boolean,
      required: true
    }
  },
  methods: {
    deleteArticle() {
      this.$emit('delete', this.article.id_soc);
    }
  }
}
</script>


  