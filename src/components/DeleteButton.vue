<script setup lang="ts">
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const noteStore = useNoteStore()

const deleteNote = (id: string) => {
  const index = noteStore.notes.findIndex((note) => note.id === id)
  if (index !== -1) {
    noteStore.notes.splice(index, 1)
  }
  router.back()
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
  <div class="item" @click="deleteNote(id)">Delete</div>
</template>

<style lang="scss" scoped>
.item {
  padding: 10px 20px;
  background-color: #522;
  font-size: 20px;
  text-align: center;
  border-radius: 5px;
  border: solid 1px #855;
  user-select: none;
  display: inline-block;
  margin: 0px 5px;
}

.item:hover {
  background-color: #744;
  cursor: pointer;
}
</style>
