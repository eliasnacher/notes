<script setup lang="ts">
import NoteToast from '@/components/NoteToast.vue'
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const noteStore = useNoteStore()

const openNote = (id: string) => {
  router.push(`/note/${id}`)
}
</script>

<template>
  <NoteToast
    v-for="(note, index) in noteStore.notes"
    @click="openNote(note.id)"
    :key="index"
    :title="note.title"
    :text="note.text"
    :icon="note.icon"
  />
</template>
