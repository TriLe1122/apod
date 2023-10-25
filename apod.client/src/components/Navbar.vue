<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-black px-3">
    <router-link class="navbar-brand d-flex" :to="{ name: 'Home' }">
      <div class="d-flex flex-column align-items-center">
        <!-- <img alt="logo" src="../assets/img/cw-logo.png" height="45" /> -->
        <i class="fa-solid fa-user-astronaut fs-1 ms-5 my-4"></i>
      </div>
    </router-link>
    <button @click="handleSave()" class="p-0 m-0 bg-transparent border-0">
      <i class="fa-book fa-solid fs-1 text-light"></i>
    </button>
    <button @click="getSavedDate()" class="p-0 m-0 bg-transparent border-0">
        <i class="fa-book fa-solid fs-1 text-light"></i>
      </button>
    <div class="col-6 text-end p-2">
      <form @submit.prevent="getNasaApodByDate()">
      <input type="date" id="space-dawg" name="space-dawg" min="1995-06-16" max="" v-model="selectedDate">
      <button class="btn btn-warning" type="submit">Date</button>
      </form>
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

<script setup>


import { ref, watchEffect } from "vue"
import { nasaService } from "../services/NasaService.js"
import Pop from "../utils/Pop.js"
import Login from './Login.vue'


const selectedDate = ref(null)
async function getNasaApodByDate() {
        try {
          console.log(selectedDate.value)
            await nasaService.getNasaApodByDate(selectedDate.value)
          } catch (error) {
            console.error('[]',error)
            Pop.error(error)
          }
}

async function handleSave() {
  try {
     console.log("test")
    } catch (error) {
      console.error('[]',error)
      Pop.error(error)
    }
}
// watchEffect(() => {
//   console.log(selectedDate.value)
// })

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
