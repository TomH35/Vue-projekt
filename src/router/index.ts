import { createRouter, createWebHistory } from 'vue-router'
import { useAdminStore } from '../stores/adminLogin';
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'Home',
      component: HomeView
    },
    {
      path: '/specs/:soc_id_clanku',
      name: 'specs',
      component: () => import('../views/SpecsView.vue')
    },
    {
      path: '/soc',
      name: 'soc',
      component: () => import('../views/SocView.vue')
    },
    {
      path: '/compare',
      name: 'compare',
      component: () => import('../views/SocCompareView.vue')
    },
    {
      path: '/adminPanel',
      name: 'adminPanel',
      component: () => import('../views/AdminView.vue'),
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/adminCreate',
      name: 'adminCreate',
      component: () => import('../views/CreateView.vue'),
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/adminLogin',
      name: 'adminLogin',
      component: () => import('../views/AdminLoginView.vue')
    },
    {
      path: '/adminDelete',
      name: 'adminDelete',
      component: () => import('../views/DeleteView.vue'),
      meta: {
        requiresAuth: true
      }
    },
  ],
  scrollBehavior (to, from, savedPosition) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve({ left: 0, top: 0 })
      }, 10)
    })
  }
})

router.beforeEach((to, from, next) => {
  const user = useAdminStore();

  if (to.matched.some(record => record.meta.requiresAuth) && !user.isLoggedIn) {
    next({ name: 'adminLogin' });
  } else {
    next();
  }
})

export default router




