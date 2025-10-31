import axios from 'axios';

const API = axios.create({
  baseURL: 'https://product-tejas-itech.onrender.com',
});

export default API;
