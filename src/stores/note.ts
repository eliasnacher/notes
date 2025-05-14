import { defineStore } from 'pinia'
import { v4 as uuidV4 } from 'uuid'
import type { Note } from '@/types/note'

export const useNoteStore = defineStore('note', {
  state: () => ({
    notes: [] as Note[],
  }),
  actions: {
    addNote(title: string, text: string, icon: string): string {
      const id = uuidV4()
      this.notes.push({
        id: id,
        title: title,
        text: text,
        icon: icon,
      })      
      return id
    },
  },
  persist: true
})
