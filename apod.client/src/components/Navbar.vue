<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-black px-3">
    <router-link class="navbar-brand d-flex" :to="{ name: 'Home' }">
      <div class="d-flex flex-column align-items-center">
        <!-- <img alt="logo" src="../assets/img/cw-logo.png" height="45" /> -->
        <i class="fa-solid fa-user-astronaut fs-1 ms-5 my-2"></i>
      </div>
    </router-link>
    <div class="col-6 text-end p-2">
      <input type="date" id="space-dawg" name="space-dawg" min="1995-06-16" max="" 
@change="getNasaApodByDate()"
        >
    </div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
      aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto">
        <li>
          <router-link :to="{ name: 'About' }" class="btn text-success lighten-30 selectable text-uppercase">
            About
          </router-link>
        </li>
      </ul>
      <!-- LOGIN COMPONENT HERE -->
      <Login />
    </div>
  </nav>
</template>

<script>
import { ref } from "vue"
import { nasaService } from "../services/NasaService.js"
import Pop from "../utils/Pop.js"
import Login from './Login.vue'

export default {
  setup() {
    const editable = ref({})
    return {
      editable,
      async getNasaApodByDate() {
        try {
          let dateinput = window.event.target.value
          console.log(dateinput);
            await nasaService.getNasaApodByDate(dateinput)
          } catch (error) {
            console.error('[]',error)
            Pop.error(error)
          }
      }

    }
  },
  components: { Login }
}
</script>

<style scoped>
a:hover {
  text-decoration: none;
}

.nav-link {
  text-transform: uppercase;
}

.navbar-nav .router-link-exact-active {
  border-bottom: 2px solid var(--bs-success);
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

@media screen and (min-width: 768px) {
  nav {
    height: 64px;
  }
}
</style>
