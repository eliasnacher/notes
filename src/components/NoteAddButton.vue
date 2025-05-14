<script setup lang="ts">
import { useNoteStore } from '../stores/note'

const store = useNoteStore()
const addNewNoteToStore = () => {
  store.addNote('Nueva Nota', 'Description Nota', 'https://sadfsd.sdf')
  window.scrollTo({
    top: document.body.scrollHeight,
    behavior: 'smooth',
  })
}
</script>

<template>
  <div class="item" @click="addNewNoteToStore()">+</div>
</template>

<style lang="scss" scoped>
.item {
  width: 50px;
  height: 50px;
  background-color: #222;
  font-size: 50px;
  text-align: center;
  line-height: 47px;
  border-radius: 5px;
  border: solid 1px #555;
  user-select: none;
  position: fixed;
  top: 20px;
  right: 20px;
}

.item:hover {
  background-color: #444;
  cursor: pointer;
}
</style>
