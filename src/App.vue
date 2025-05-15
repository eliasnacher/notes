<script setup lang="ts">
import { App } from '@capacitor/app'
import { RouterView } from 'vue-router'
import router from '@/router'

App.addListener('backButton', () => {
  router.back()
})
</script>

<template>
  <RouterView />
</template>

<style scoped></style>
