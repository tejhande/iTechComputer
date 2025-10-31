const express = require('express');
const dotenv = require('dotenv');
const cors = require('cors');
const path = require('path');
const connectDB = require('./config/db');
const productRoutes = require('./routes/productRoutes');

// Load environment variables
dotenv.config();

// Connect to MongoDB
connectDB();

const app = express();

// Middleware
app.use(cors()); // Enable CORS for all origins
app.use(express.json()); // Enable body parser for JSON data

// Serve static images from the 'uploads' directory
// When a request comes to /uploads, it will serve files from the specified directory
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// Product routes
app.use('/api/products', productRoutes);

// Basic route for testing
app.get('/', (req, res) => {
  res.send('API is running...');
});

// Error handling middleware (optional, but good practice)
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// const PORT = process.env.PORT || 5000;

const PORT = process.env.PORT || 6000;
app.listen(PORT, () => {
  console.log(`✅ Server running on port ${PORT}`);
});
