<script setup lang="ts">
import router from '@/router'

const goBack = () => {
  router.back()
  window.scrollTo({
    top: 0,
    behavior: 'smooth',
  })
}
</script>

<template>
  <div class="item app-button" @click="goBack()">Back</div>
</template>

<style lang="scss" scoped>
</style>
