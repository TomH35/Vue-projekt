<template>
  <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="card w-50">
      <div class="card-body">
        <h5 class="card-title text-center">Prihlásiť sa</h5>
        <form @submit.prevent="submitForm">
          <div class="mb-3">
            <label for="loginInput" class="form-label">Login</label>
            <input type="text" class="form-control" id="loginInput" placeholder="Zadajte login" v-model="username" required>
          </div>
          <div class="mb-3">
            <label for="passwordInput" class="form-label">Heslo</label>
            <input type="password" class="form-control" id="passwordInput" placeholder="Zadajte heslo" v-model="password" required>
          </div>
          <div v-if="errorMessage" class="alert alert-danger" role="alert">
            {{ errorMessage }}
          </div>
          <div>
            <button class="btn custom-button-color" value="Vytvoriť" name="add_soc" type="submit">Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'LoginForm',
  data() {
    return {
      username: '',
      password: '',
      errorMessage: ''
    }
  },
  methods: {
    submitForm() {
      const loginData = {
        username: this.username,
        password: this.password
      }
      this.$emit('login', loginData)
    }
  },
  watch: {
    '$parent.errorMessage': function(newVal) {
      this.errorMessage = newVal;
    }
  }
})
</script>

  