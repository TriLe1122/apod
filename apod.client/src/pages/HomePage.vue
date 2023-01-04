<template>
  <section class="container">
    <div class="row">
      <div class="col-md-8 m-auto text-shadow mt-5">
        <p class="on-hover">{{ apod?.explanation }}</p>
        <h1 class="text-center">{{ apod?.title }}</h1>
        <h2>{{ apod?.date }}</h2>
        <p>Taken by {{ apod?.copyright }}</p>
      </div>
    </div>
  </section>
</template>

<script>
import { onMounted } from "vue"
import { AppState } from "../AppState.js"
import { nasaService } from "../services/NasaService.js"
import Pop from "../utils/Pop.js"
import { computed } from '@vue/reactivity';




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

    return {
      apod: computed(() => AppState.apod)
    }
  }
}
</script>

<style scoped lang="scss">

</style>
