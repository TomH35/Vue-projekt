import { defineStore } from 'pinia'
import type { State } from '../stores/types';

export const useAdminStore = defineStore('user', {
  state: (): State => ({
    isLoggedIn: Boolean(localStorage.getItem('isLoggedIn')),
    errorMessage: ''
  }),
  actions: {
    async login(loginData: { username: string, password: string }) {
      try {
        const response = await fetch('/backend/AdminLogin.php', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(loginData)
        })

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json()

        if (data.success) {
          this.isLoggedIn = true;
          localStorage.setItem('isLoggedIn', 'true');
        } else {
          throw new Error("Invalid username or password.")
        }
      } catch (error) {
        if (error instanceof Error) {
          this.errorMessage = error.message;
        }
      }
    },
    logout() {
      this.isLoggedIn = false;
      localStorage.removeItem('isLoggedIn');
    }
  }
})


