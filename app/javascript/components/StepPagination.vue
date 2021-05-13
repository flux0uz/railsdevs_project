<template>
  <div
    class="max-w-4xl mx-auto bg-gray-100 border-t-2 border-r-2 border-l-2 border-black rounded-t-lg shadow-sm"
  >
    <div class="grid grid-cols-1 lg:grid-cols-12">
      <div
        class="lg:col-span-4 px-2 pt-4 pb-2 border-b-4 border-transparent lg:pt-6 lg:px-4 lg:pb-4"
        :class="{
          'border-red-500 bg-white rounded-tl-lg':
            step === 1 || step === 2 || step === 3,
        }"
      >
        <p class="text-xs text-gray-600 uppercase lg:text-sm">Step 1</p>
        <h3 class="text-sm font-black lg:text-xl">Job Details</h3>
      </div>
      <div
        class="lg:col-span-4 px-2 pt-4 pb-2 border-b-4 border-transparent lg:pt-6 lg:px-4 lg:pb-4"
        :class="{ 'border-red-500 bg-white': step === 2 || step === 3 }"
      >
        <p class="text-xs text-gray-600 uppercase lg:text-sm">Step 2</p>
        <h3 class="text-sm font-black lg:text-xl">Job Preview</h3>
      </div>
      <div
        class="lg:col-span-4 px-2 pt-4 pb-2 border-b-4 border-transparent lg:pt-6 lg:px-4 lg:pb-4"
        :class="{ 'border-red-500 bg-white rounded-tr-lg': step === 3 }"
      >
        <p class="text-xs text-gray-600 uppercase lg:text-sm">Step 3</p>
        <h3 class="text-sm font-black lg:text-xl">Job Purchase</h3>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    step: {
      type: Number,
      required: true,
    },
  },
};
</script>

<style></style>
