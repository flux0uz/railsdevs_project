<template>
  <div>
    <label for="compensation-type" class="label">Compensation type</label>
    <span class="required"></span>

    <div class="relative">
      <select name="compensation-type" id="compensation-type" class="select">
        <option value="Contract">Contract</option>
        <option value="Full-time">Full-Time</option>
      </select>
      <select-arrow></select-arrow>
    </div>
  </div>
</template>

<script>
import SelectArrow from "../icons/SelectArrow";
export default {
  components: {
    SelectArrow,
  },
};
</script>
