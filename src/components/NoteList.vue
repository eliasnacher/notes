<script setup lang="ts">
import NoteToast from '@/components/NoteToast.vue'
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const noteStore = useNoteStore()

const openNote = (id: string) => {
  router.push({ name: 'note', params: { id } })
}
</script>

<template>
  <NoteToast v-bind:key="note.id" v-for="(note) in noteStore.notes" @click="openNote(note.id)" :note="note" />
</template>
