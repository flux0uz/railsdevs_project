<template>
  <div>
    <label for="estimated-hours" class="label">Estimated hours</label>
    <span class="required"></span>

    <div class="relative">
      <select name="estimated-hours" id="estimated-hours" class="select">
        <option :value="item" v-for="item in hoursRange" :key="item">
          {{ item }}
        </option>
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
  data() {
    return {
      hoursRange: ["less than 10", "10-30", "30-60", "60-90", "more than 100"],
    };
  },
};
</script>
