<script setup lang="ts">
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const store = useNoteStore()
const addNewNoteToStore = () => {
  const noteId = store.addNote('', '', '')
  router.push(`/note/${noteId}`)
}
</script>

<template>
  <div class="item app-button" @click="addNewNoteToStore()">Add</div>
</template>

<style lang="scss" scoped>
</style>
