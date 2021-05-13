<template>
  <div>
    <p class="label">Is this a remote role?</p>
    <span class="required"></span>

    <div class="block pt-2">
      <input type="radio" value="Yes" v-model="job.remote" id="isRemote" />
      <label for="isRemote" class="font-normal">Yes</label>

      <input type="radio" value="No" v-model="job.remote" id="isNotRemote" />
      <label for="isNotRemote" class="font-normal">No</label>
    </div>
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
};
</script>
