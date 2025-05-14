<script>
export default {
  props: {
    title: {
      type: String,
      required: true,
    },
    text: {
      type: String,
      required: true,
    },
    icon: {
      type: String,
      required: false,
    },
  },
}
</script>

<template>
  <div class="item">
    <div class="icon">
      <img :src="icon" />
    </div>
    <div class="detail">
      <div class="title">
        <h3>{{ title }}</h3>
      </div>
      <div class="text">
        <p>{{ text }}</p>
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
  background-color: #444
}

.icon {
  width: 150px;
  display: inline-block
}

.icon img {
  width: 100%;
}

.detail {
  width: calc(100% - 190px);
  display: inline-block;
  padding: 0px 20px;
}
</style>
