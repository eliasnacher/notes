<script setup lang="ts">
import NoteList from '@/components/NoteList.vue'
import BottomButonList from '@/components/BottomButtonList.vue'
import NoteAddButton from '@/components/NoteAddButton.vue'
</script>

<template>
  <main>
    <NoteList />
    <BottomButonList>
      <NoteAddButton />
    </BottomButonList>
  </main>
</template>
