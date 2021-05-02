<template>
  <button
    class="absolute top-0 right-0 mt-2 mr-2 flex items-center justify-center w-6 h-6 bg-red-500 rounded-full hover:bg-red-600"
    @click.prevent="handleButtonRemoveClick($event.target)"
  >
    <close-icon></close-icon>
  </button>
</template>

<script>
import CloseIcon from "../icons/CloseIcon";
export default {
  components: {
    CloseIcon,
  },
  methods: {
    handleButtonRemoveClick(target) {
      this.$emit("buttonRemoveClicked", target);
    },
  },
};
</script>
