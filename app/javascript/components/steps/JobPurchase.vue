<template>
  <div>
    <h1 class="font-black text-4xl">Purchase</h1>

    <a @click.prevent="prev" class="btn btn-red btn-lg">Back</a>
  </div>
</template>

<script>
export default {
  props: {
    job: {
      type: Object,
      required: true,
    },
  },
  methods: {
    prev() {
      this.$emit("prevStep");
    },
  },
};
</script>
