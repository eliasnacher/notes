<script lang="ts" setup>
import type { Note } from '@/types/note';

const defaultImg: string = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFwAAABcCAMAAADUMSJqAAAAY1BMVEX///8AAAClpaX5+fnq6upycnI+Pj6+vr51dXXu7u6qqqoNDQ2UlJQRERHe3t6AgIA5OTlMTEy4uLhWVlaampopKSloaGgZGRnOzs7X19dgYGAzMzMuLi5tbW0gICCLi4tFRUWOIQwrAAACP0lEQVRoge2Y63KDIBBGi3hDo4m5X9qk7/+UTVLbBPhAFjcz7YznX2s4s7Muy+Lb28TExEQkaVElSVWkr1BneS2u1HnGrZcz8cRMsro/hEbJaDfdrPaZ6b5mhsud2m4hFJM8Q/KSx53mSJ7zhF7USF4XLPIKuYWoWOQJlid/X/7StOAX2lBfaLtvwX9ZSlHOT80CbWu4iTJa3N190RyEjuS0wJf9qr39aHTjUqt+2cp+JkvTTWy5j2oGoZt2oluef1cewUq51nJCPCouT2uX6AeqzJvbwybPqP2w3TzJcxyY+h4t6K1Wrweenf3DQX9fG64z7M7WqLQ1o3tvlvEG9Zg4pBk4bAKRFJZbCK55UKKWun3+wYj3uwRusXs0gaI8lqAlhAW+QPJHE7hv/Abu2mHW0C1Ef4z1lXSOqp8UBy7E5/fjrv8TdOJh5g53Pzs8HkdsLOV0iy7VqnRzYAz8FrqWs4468O93HrlQ+gFETQycGn5Z6eNQQ6t2q2P56UhNoRsWalD6Gdz4XsITo6iBX4/X4MQ4ZmMvoYmREW7H3GEDJsAAzkGJaU9R8rDEXIY9mIDLUBvrDjlfj/FyNKlqEDe+zkBi7C8oFBr/mYdGFQInb2Lg7Y+Ar7XHbHyN2t3B1NjAfYlxfCogcXG4U+/BGYqjg0VvfA18+Ye37Qjg7d+6DscCEnNgyfgNcOaN6FgmW9PNlfE7Zugju4qO+SnqMLwkHHPwle987ne7WuijkIMOtHVVJSxUrF8IJiYm/idfg2QX76+18BQAAAAASUVORK5CYII=';

interface Props {
  note: Note
}

defineProps<Props>();

</script>

<template>
  <div class="item">
    <div class="icon" :style="{ '--icon': `url(${note.icon === '' ? defaultImg : note.icon })` }">
    </div>
    <div class="detail">
      <div class="title">
        <h3>{{ note.title == '' ? 'Sin titulo' : note.title }}</h3>
      </div>
      <div class="text">
        <p>{{ note.text }}</p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.item {
  padding: 20px;
  cursor: pointer;
}

.item:hover {
  background-color: #111
}

.icon {
  width: 150px;
  height: 150px;
  display: inline-block;
  vertical-align: top;
  background-image: var(--icon);
  background-size: contain;
  background-repeat: no-repeat;
}

.detail {
  display: inline-block;
  vertical-align: top;
  padding: 0px 20px;
  height: 150px;
}

.title {
  height: 20px;
}

.text {
  height: 20px;
}
</style>
