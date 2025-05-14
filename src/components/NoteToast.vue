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
      <i>
        <slot name="icon">{{ icon }}</slot>
      </i>
    </div>
    <div class="detail">
      <div class="title">
        <h3>
          <slot name="title">{{ title }}</slot>
        </h3>
      </div>
      <div class="text">
        <p>
          <slot name="text">{{ text }}</slot>
        </p>
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

.detail {
  width: calc(100% - 150px);
  display: inline-block
}
</style>
