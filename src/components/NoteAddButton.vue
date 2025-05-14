<script setup lang="ts">
import { useNoteStore } from '@/stores/note'
import router from '@/router'

const store = useNoteStore()
const addNewNoteToStore = () => {
  let noteId = store.addNote(
    'Nueva Nota',
    'Description Nota',
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFwAAABcCAMAAADUMSJqAAAAY1BMVEX///8AAAClpaX5+fnq6upycnI+Pj6+vr51dXXu7u6qqqoNDQ2UlJQRERHe3t6AgIA5OTlMTEy4uLhWVlaampopKSloaGgZGRnOzs7X19dgYGAzMzMuLi5tbW0gICCLi4tFRUWOIQwrAAACP0lEQVRoge2Y63KDIBBGi3hDo4m5X9qk7/+UTVLbBPhAFjcz7YznX2s4s7Muy+Lb28TExEQkaVElSVWkr1BneS2u1HnGrZcz8cRMsro/hEbJaDfdrPaZ6b5mhsud2m4hFJM8Q/KSx53mSJ7zhF7USF4XLPIKuYWoWOQJlid/X/7StOAX2lBfaLtvwX9ZSlHOT80CbWu4iTJa3N190RyEjuS0wJf9qr39aHTjUqt+2cp+JkvTTWy5j2oGoZt2oluef1cewUq51nJCPCouT2uX6AeqzJvbwybPqP2w3TzJcxyY+h4t6K1Wrweenf3DQX9fG64z7M7WqLQ1o3tvlvEG9Zg4pBk4bAKRFJZbCK55UKKWun3+wYj3uwRusXs0gaI8lqAlhAW+QPJHE7hv/Abu2mHW0C1Ef4z1lXSOqp8UBy7E5/fjrv8TdOJh5g53Pzs8HkdsLOV0iy7VqnRzYAz8FrqWs4468O93HrlQ+gFETQycGn5Z6eNQQ6t2q2P56UhNoRsWalD6Gdz4XsITo6iBX4/X4MQ4ZmMvoYmREW7H3GEDJsAAzkGJaU9R8rDEXIY9mIDLUBvrDjlfj/FyNKlqEDe+zkBi7C8oFBr/mYdGFQInb2Lg7Y+Ar7XHbHyN2t3B1NjAfYlxfCogcXG4U+/BGYqjg0VvfA18+Ye37Qjg7d+6DscCEnNgyfgNcOaN6FgmW9PNlfE7Zugju4qO+SnqMLwkHHPwle987ne7WuijkIMOtHVVJSxUrF8IJiYm/idfg2QX76+18BQAAAAASUVORK5CYII=',
  )
  router.push(`/note/${noteId}`)
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
  bottom: 20px;
  right: 20px;
}

.item:hover {
  background-color: #444;
  cursor: pointer;
}
</style>
