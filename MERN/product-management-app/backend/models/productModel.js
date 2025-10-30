const mongoose = require('mongoose');

const productSchema = mongoose.Schema(
  {
    name: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: true,
    },
    price: {
      type: Number,
      required: true,
      default: 0,
      min: 0, // Ensure price is positive
    },
    image: {
      type: String,
      required: false, // Image is optional
    },
  },
  {
    timestamps: true, // Adds createdAt and updatedAt timestamps
  }
);

const Product = mongoose.model('Product', productSchema);

module.exports = Product;