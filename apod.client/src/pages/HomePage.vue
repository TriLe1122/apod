<template>

</template>

<script>
import { onMounted } from "vue"
import { nasaService } from "../services/NasaService.js"
import Pop from "../utils/Pop.js"

export default {
  setup() {

    async function getApod() {
      try {
        await nasaService.getNasaApod()
      } catch (error) {
        console.error('[]', error)
        Pop.error(error)
      }
    }

    onMounted(() => {
      getApod()
    })

    return {}
  }
}
</script>

<style scoped lang="scss">

</style>
