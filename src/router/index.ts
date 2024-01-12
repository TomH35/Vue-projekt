import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/specs/:soc_id_clanku', // Add dynamic segment
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
      component: () => import('../views/AdminView.vue')
    },
    {
      path: '/adminPridavanie',
      name: 'adminPridavanie',
      component: () => import('../views/PridavanieView.vue')
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

export default router



