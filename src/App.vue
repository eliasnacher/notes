<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'

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
