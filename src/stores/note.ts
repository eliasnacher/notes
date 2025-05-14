import { ref, computed } from 'vue'
import { defineStore } from 'pinia'
import { v4 as uuidV4 } from 'uuid'

export const useNoteStore = defineStore('note', {
  state: () => ({
    notes: [],
  }),
  actions: {
    addNote(title: string, text: string, icon: string): void {
      this.notes.push({
        id: uuidV4(),
        title: title,
        text: text,
        icon: icon,
      })
      console.log(this.notes)
    },
  },
})
