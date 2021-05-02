<template>
  <div>
    <label for="company-email" class="label">Company email</label>
    <span class="required"></span>

    <input
      type="text"
      name="company-email"
      id="company-email"
      placeholder="john@smith.com"
      class="input"
      required
    />
    <p class="my-1 text-sm text-gray-500">
      Used for billing only. Not publically displayed.
    </p>
  </div>
</template>

<script>
export default {};
</script>
