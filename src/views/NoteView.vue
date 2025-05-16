<script setup lang="ts">
import BottomButonList from '@/components/BottomButtonList.vue'
import EditButton from '@/components/EditButton.vue'
import DeleteButton from '@/components/DeleteButton.vue'
import BackButton from '@/components/BackButton.vue'
import { useNoteStore } from '@/stores/note'
import { useRoute } from 'vue-router'
import type { Note } from '@/types/note'
import { ref } from 'vue'

let editMode = ref(true)
const toggleEdit = () => {
  editMode.value = !editMode.value
}

const route = useRoute()

const noteStore = useNoteStore()
const noteId = route.params.id
const note = noteStore.notes.find((note) => note.id === noteId) as Note
</script>

<template>
  <main>
    <div v-if="note === undefined">Not found</div>
    <div v-if="note !== undefined">
      <img class="icon-view" :src="note.icon" />
      <div class="icon-edit">
        <input
          v-model="note.icon"
          v-if="editMode"
          type="text"
          placeholder="Escribe un enlace de icono"
        />        
      </div>
      <span class="title-view" v-if="!editMode">{{ note.title }}</span>
      <p v-if="!editMode">{{ note.text }}</p>

      <input
        v-model="note.title"
        v-if="editMode"
        type="text"
        placeholder="Escribe un título"
      />
      <textarea
        v-model="note.text"
        v-if="editMode"
        rows="50"
        placeholder="Escribe una descripción"
      ></textarea>
    </div>
    <BottomButonList>
      <EditButton :toggleEdit="toggleEdit" />
      <DeleteButton :id="note.id" />
      <BackButton />
    </BottomButonList>
  </main>
</template>

<style scoped>
input[type='text'],
textarea {
  color: white;
  background-color: var(--color-background-contrast);
  border: none;
  border-radius: 5px;
  padding: 5px 10px;
  margin: 5px 10px;
  vertical-align: top;
  width: calc(100% - 40px);
}

.icon-edit {
    width: calc(100% - 50px);
    display: inline-block;
    vertical-align: top;
}

.icon-view {
  width: 50px;
  display: inline-block;
}

.title-view {
  width: calc(100% - 100px);
  padding-left: 10px;
  display: inline-block;
  font-weight: bold;
  font-size: 17px;
  vertical-align: top;
}
</style>
