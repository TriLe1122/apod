<template>
<div class="col-md-6 m-auto text-shadow mt-5">
  <p class="on-hover">{{apod?.explanation}}</p>
  <h1>{{apod?.title}}</h1>
  <h2>{{apod?.date}}</h2>
  <p>Taken by {{apod?.copyright}}</p>
</div>
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
