import axios from 'axios'

const base = (process.env.VUE_APP_API_BASE_URL || 'http://localhost:3000/api/v1')

const API = axios.create({
  baseURL: base
})

export default API
