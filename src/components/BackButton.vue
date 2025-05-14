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
  <div class="item" @click="goBack()">🢀</div>
</template>

<style lang="scss" scoped>
.item {
  width: 50px;
  height: 50px;
  background-color: #222;
  font-size: 30px;
  text-align: center;
  line-height: 47px;
  border-radius: 5px;
  border: solid 1px #555;
  user-select: none;
  position: fixed;
  bottom: 20px;
  right: 20px;
}

.item:hover {
  background-color: #444;
  cursor: pointer;
}
</style>
