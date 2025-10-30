const express = require('express');
const router = express.Router();
const { getProducts, getProductById, createProduct, updateProduct, deleteProduct } = require('../controllers/productController');
const upload = require('../middlewares/uploadMiddleware');

// Route for fetching all products and creating a new product
router.route('/')
  .get(getProducts)
  .post(upload.single('image'), createProduct); // 'image' is the field name for the file upload

// Routes for fetching, updating, and deleting a single product by ID
router.route('/:id')
  .get(getProductById)
  .put(upload.single('image'), updateProduct) // 'image' is the field name for the file upload
  .delete(deleteProduct);

module.exports = router;