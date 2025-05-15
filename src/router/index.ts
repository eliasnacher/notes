import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import NoteView from '@/views/NoteView.vue'

import { useNoteStore } from '@/stores/note'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/note/:id',
      name: 'note',
      component: NoteView,
      beforeEnter: (to, from, next) => {
        const noteStore = useNoteStore()
        const noteId = to.params.id
        const exists = noteStore.notes.some(note => note.id === noteId)

        if (!exists) {
          next({ name: 'home' })
        } else {
          next()
        }
      }
    },
  ],
})

export default router
