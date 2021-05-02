<template>
  <div>
    <h3 class="mb-3 font-black text-3xl">About the Job</h3>

    <div class="inline-flex mb-6">
      <p class="m-0 text-xs tracking-wide text-gray-600 uppercase">
        Required fields
      </p>
      <span class="mt-2 ml-1 required"></span>
    </div>

    <job-title :job="job" class="mb-6"></job-title>
    <apply-link :job="job" class="mb-6"></apply-link>
    <job-description :job="job" class="mb-6"></job-description>
    <job-experience :job="job" class="mb-6"></job-experience>
    <compensation-type :job="job" class="mb-6"></compensation-type>
    <compensation-range :job="job" class="mb-6"></compensation-range>
    <estimated-hours :job="job" class="mb-6"></estimated-hours>
    <job-remote :job="job" class="mb-6"></job-remote>

    <h3 class="mb-3 font-black text-3xl">About the Company</h3>
    <div class="mb-10">
      <p class="block w-full label">Company logo</p>
      <file-select :job="job" v-model="job.companyLogo"></file-select>
      <p class="my-1 text-sm text-gray-500">
        While not required, we recommend adding a company logo to help your
        listing stand out.
      </p>
    </div>
    <company-name :job="job" class="mb-6"></company-name>
    <company-email :job="job" class="mb-6"></company-email>
    <company-website :job="job" class="mb-6"></company-website>

    <a @click.prevent="next" class="btn btn-default">Next</a>
  </div>
</template>

<script>
import JobTitle from "../fields/JobTitle";
import ApplyLink from "../fields/ApplyLink";
import JobDescription from "../fields/JobDescription";
import JobExperience from "../fields/JobExperience";
import CompensationType from "../fields/CompensationType";
import CompensationRange from "../fields/CompensationRange";
import EstimatedHours from "../fields/EstimatedHours";
import JobRemote from "../fields/JobRemote";
import CompanyName from "../fields/CompanyName";
import CompanyEmail from "../fields/CompanyEmail";
import CompanyWebsite from "../fields/CompanyWebsite";
import FileSelect from "../fields/FileSelect";

export default {
  components: {
    JobTitle,
    ApplyLink,
    JobDescription,
    JobExperience,
    CompensationType,
    CompensationRange,
    EstimatedHours,
    JobRemote,
    CompanyName,
    CompanyEmail,
    FileSelect,
    CompanyWebsite,
  },
  props: {
    job: {
      type: Object,
      required: true,
    },
  },
  methods: {
    next() {
      this.$emit("nextStep");
    },
  },
};
</script>
