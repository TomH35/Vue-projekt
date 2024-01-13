<template>
  <div>
    <LoginForm @login="handleLogin"/>
  </div>
</template>

<script lang="ts">
import LoginForm from '../components/LoginForm.vue';
import { useAdminStore } from '../stores/adminLogin';
import { useRouter } from 'vue-router';

export default {
  name: 'adminLogin',
  components: {
    LoginForm
  },
  data() {
    return {
      loginData: null,
      user: useAdminStore(),
      router: useRouter(),
      errorMessage: ''
    }
  },
  methods: {
    handleLogin(loginData: any) {
      this.loginData = loginData;
    }
  },
  watch: {
    loginData(newLoginData) {
      if (newLoginData) {
        this.user.login(newLoginData).then(() => {
          if (this.user.isLoggedIn) {
            this.router.push({ name: 'adminPanel' });
          }
        }).catch((error) => {
          if (error instanceof Error) {
            this.errorMessage = error.message;
          }
        });
      }
    },
    'user.errorMessage': function(newVal) {
      this.errorMessage = newVal;
    }
  }
}
</script>




  

