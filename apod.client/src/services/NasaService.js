import { AppState } from "../AppState.js"
import { Apod } from "../models/Apod.js"
import { nasaServer } from "./AxiosService.js"

class NasaService{
  async getNasaApod() {
    const res = await nasaServer.get()
    console.log('getNasaApod', res.data);
    AppState.apod = new Apod(res.data)

  }

}

export const nasaService = new NasaService()