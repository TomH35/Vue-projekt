<template>
<div class= "container mt-5 mb-5 d-flex justify-content-center">
<div class= "row mt-5 mb-5">
<div class= "col-sm-6 mt-5 mb-5">
<div class="card mb-5 mt-5" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="/img/add-g273330623_1280.png" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Pridať alebo upraviť článok</h5>
        <p class="card-text"></p>
        <router-link :to="{ name: 'adminPridavanie' }" class="nav-link">
            <span class="btn custom-button-color custom-button-margin">Pridavanie</span>
        </router-link>
      </div>
    </div>
  </div>
</div>
</div>
<div class="col-sm-6 mt-5 mb-5">
  <div class="card mb-5 mt-5" style="max-width: 540px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="/img/trash-g0d0eff27b_1280.png" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">Zmazať článok</h5>
          <p class="card-text"></p>
          <a href="admin_mazanie.php" class="btn custom-button-color custom-button-margin">Zmazať článok</a>
        </div>
      </div>
    </div>
  </div>


</div>
</div>
</div>
<div class="container d-flex justify-content-center mt-3 mb-5">
    <button @click="handleLogout" class="btn custom-button-color">Logout</button>
</div>

</template>
<script lang="ts">
import { useAdminStore } from '../stores/adminLogin';
import { useRouter } from 'vue-router';

export default {
  name: 'adminPanel',
  data() {
    return {
      user: useAdminStore(),
      router: useRouter()
    }
  },
  methods: {
    handleLogout() {
      this.user.logout();
      this.router.push({ name: 'adminLogin' });
    }
  }
}
</script>

