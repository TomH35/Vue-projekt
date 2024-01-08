import { createRouter, createWebHistory } from 'vue-router'
import SpecsView from '../views/SpecsView.vue'
import SocView from '../views/SocView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/specs',
      name: 'specs',
      component: SpecsView
    },
    {
      path: '/soc',
      name: 'soc',
      component: SocView
    },
  ]
})

export default router

