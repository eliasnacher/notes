<script setup lang="ts">
import { App } from '@capacitor/app'
import { RouterLink, RouterView } from 'vue-router'
import router from '@/router'

const backHandler = App.addListener('backButton', () => {
  router.back()
})

let notes = [
  {
    title: 'Test title',
    text: 'Test text',
    icon: 'https://google.com',
  },
]
</script>

<template>
  <RouterView />
</template>

<style scoped></style>
