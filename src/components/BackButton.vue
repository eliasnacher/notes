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
  <div class="item" @click="goBack()">Back</div>
</template>

<style lang="scss" scoped>
.item {
  padding: 10px 20px;
  background-color: #222;
  font-size: 20px;
  text-align: center;
  border-radius: 5px;
  border: solid 1px #555;
  user-select: none;
  display: inline-block;
  margin: 0px 5px;
}

.item:hover {
  background-color: #444;
  cursor: pointer;
}
</style>
