import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

const ProductList = () => {
  const [products, setProducts] = useState([]);
  const [page, setPage] = useState(1);
  const [pages, setPages] = useState(1);

  useEffect(() => {
    fetchProducts();
  }, [page]);

  const fetchProducts = async () => {
    try {
      const { data } = await axios.get(`/api/products?pageNumber=${page}`);
      setProducts(data.products);
      setPages(data.pages);
    } catch (error) {
      console.error('Error fetching products:', error);
    }
  };

  const deleteProductHandler = async (id) => {
    if (window.confirm('Are you sure you want to delete this product?')) {
      try {
        await axios.delete(`/api/products/${id}`);
        fetchProducts(); // Refresh the list after deletion
      } catch (error) {
        console.error('Error deleting product:', error);
      }
    }
  };

  return (
    <div className="container">
      <h1>Products</h1>
      <div className="product-list">
        {products.map((product) => (
          <div key={product._id} className="product-card">
            {product.image && (
              <img src={`http://localhost:5000${product.image}`} alt={product.name} />
            )}
            <h3>{product.name}</h3>
            <p>{product.description}</p>
            <p className="price">₹{product.price.toFixed(2)}</p>
            <div className="actions">
              <Link to={`/edit/${product._id}`} className="button">
                Edit
              </Link>
              <button onClick={() => deleteProductHandler(product._id)}>
                Delete
              </button>
            </div>
          </div>
        ))}
      </div>
      <div className="pagination">
        {[...Array(pages).keys()].map((x) => (
          <button
            key={x + 1}
            onClick={() => setPage(x + 1)}
            className={x + 1 === page ? 'active' : ''}
          >
            {x + 1}
          </button>
        ))}
      </div>
    </div>
  );
};

export default ProductList;
