<script setup lang="ts">
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const noteStore = useNoteStore()

const deleteNote = (id: string) => {
  if(confirm('Delete this note?')) {
    const index = noteStore.notes.findIndex((note) => note.id === id)
    if (index !== -1) {
      noteStore.notes.splice(index, 1)
    }
    router.back()
  }
}
</script>

<script lang="ts">
export default {
  props: {
    id: {
      type: String,
      required: true,
    },
  },
}
</script>

<template>
  <div class="item app-button-danger" @click="deleteNote(id)">Delete</div>
</template>

<style lang="scss" scoped>
</style>
