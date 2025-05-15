<script setup lang="ts"></script>

<template>
  <div class="item">
    <slot></slot>
  </div>
</template>

<style scoped>
.item {
  position: fixed;
  bottom: 10px;
  right: 5px;
}
</style>
