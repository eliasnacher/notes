<script setup lang="ts">
import BottomButonList from '@/components/BottomButtonList.vue'
import DeleteButton from '@/components/DeleteButton.vue'
import BackButton from '@/components/BackButton.vue'
import { useNoteStore } from '@/stores/note'
import { useRoute } from 'vue-router'
import type { Note } from '@/types/note'

const route = useRoute()

const noteStore = useNoteStore()
const noteId = route.params.id
const note = noteStore.notes.find((note) => note.id === noteId) as Note
</script>

<template>
  <main>
    <div v-if="note === undefined">Not found</div>
    <div v-if="note !== undefined">
      <input v-model="note.title" type="text" placeholder="Escribe un título" />

      <textarea v-model="note.text" rows="50" placeholder="Escribe una descripción"></textarea>

      <input v-model="note.icon" type="text" placeholder="Escribe un enlace de icono" />
    </div>
    <BottomButonList>
      <DeleteButton :id="note.id" />
      <BackButton />
    </BottomButonList>
  </main>
</template>

<style scoped>
  input[type=text], textarea {
    width:calc(100% - 65px);
    color:white;
    background-color: #222;
    border: none;
    border-radius: 5px;
    padding:20px;
    margin: 10px;
  }

</style>
