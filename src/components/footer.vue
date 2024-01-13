<template>
    <footer class="p-3 text-white" style="background-color: #000b29;">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>COPYRIGHT</p>
          </div>
          <div class="col-sm-6">
            <ul class="custom-list-style">
              <li v-for="(url, page) in footerMenu" :key="page">
                  <router-link :to="url">{{ page }}</router-link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  </template>
  
  <script lang="ts">
  export default {
    data() {
      return {
        footerMenu: {
          "SoC": "/soc",
          "Compare SoCs": "/compare",
          "Login": "/adminLogin",
        },
      };
    },
  };
  </script>
  