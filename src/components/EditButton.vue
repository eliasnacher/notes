<script setup lang="ts">
</script>

<script lang="ts">
export default {
  props: {
    toggleEdit: {
      type: Function,
      required: true,
    },
  },
}
</script>

<template>
  <div class="item app-button" @click="toggleEdit()">Edit</div>
</template>

<style lang="scss" scoped>
</style>
