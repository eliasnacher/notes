<script setup lang="ts">
import BackButton from '../components/BackButton.vue'
import { useNoteStore } from '../stores/note'
import { useRoute } from 'vue-router'

const route = useRoute()

const noteStore = useNoteStore()
const noteId = route.params.id
const note = noteStore.notes.find((note) => note.id === noteId)
console.log(note)
</script>

<template>
  <main>
    <BackButton />
    <div v-if="note === undefined">Not found</div>
    <div v-if="note !== undefined">
      <input v-model="note.title" type="text" placeholder="Escribe un título" />

      <textarea v-model="note.text" rows="50" placeholder="Escribe una descripción"></textarea>

      <input v-model="note.icon" type="text" placeholder="Escribe un enlace de icono" />
    </div>
  </main>
</template>

<style scoped>
  input[type=text], textarea {
    width:calc(100% - 60px);
    color:white;
    background-color: #555;
    border: solid 1px #222;
    border-radius: 5px;
    padding:20px;
    margin: 10px
  }

</style>
