<template>
  <div class="pt-8 pb-16">
    <step-pagination :step="step"></step-pagination>
    <div
      class="relative max-w-4xl p-4 mx-auto bg-white rounded-b-lg shadow-sm mb-10 border-l-2 border-r-2 border-b-2 border-black shadow-xl"
    >
      <div class="lg:px-10 lg:pt-6 lg-pb-10 p-2">
        <form @submit.prevent="submit" enctype="multipart/form-data">
          <div v-if="step === 1">
            <JobInfo :job="job" @nextStep="handleNextStep" />
          </div>

          <div v-if="step === 2">
            <JobPreview
              :job="job"
              @prevStep="handlePrevStep"
              @nextStep="handleNextStep"
            />
          </div>

          <div v-if="step === 3">
            <JobPurchase :job="job" @prevStep="handlePrevStep" />
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
//import rootData from "store";
import JobInfo from "./steps/JobInfo";
import JobPreview from "./steps/JobPreview";
import JobPurchase from "./steps/JobPurchase";
import StepPagination from "./StepPagination";

export default {
  components: {
    JobInfo,
    JobPreview,
    JobPurchase,
    StepPagination,
  },
  data() {
    return {
      step: this.$root.form.step,
      job: this.$root.form.job,
    };
  },
  methods: {
    handleNextStep() {
      this.step++;
    },
    handlePrevStep() {
      this.step--;
    },
  },
};
</script>
