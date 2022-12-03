import Axios from 'axios'
import { baseURL } from '../env'
export const api = Axios.create({
  baseURL,
  timeout: 8000
})


export const nasaServer = new Axios.create({
  baseURL: 'https://api.nasa.gov/planetary/apod',
  timeout: 4000,
  params: { api_key: 'w587nM7wFTtxxIgueRbxzuByVObMKcbUUKAwh24b' }
})
