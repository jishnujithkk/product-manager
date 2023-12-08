import React, { useState, useEffect } from 'react';
import axiosClient from "../axios-client.js";

export default function Dashboard() {

  const [products, setProducts] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPage, setTotalPage] = useState(0);
  const [file, setFile] = useState(null);
  const [responseMessage, setResponseMessage] = useState('');

  useEffect(() => {
    fetchProducts(currentPage);
}, [currentPage]);

const fetchProducts = async (page) => {
    try {
        const response = await axiosClient.get(`/products?page=${page}`);
        setProducts(response.data.data);
        setTotalPage(response.data.last_page);
    } catch (error) {
        console.error('Error fetching products:', error);
    }
};

const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
};

const handleFileChange = (event) => {
  setFile(event.target.files[0]);
};

const handleUpload = async () => {
  if (!file) {
    setResponseMessage('Please select a file');
    return;
  }

  try {
    const formData = new FormData();
    formData.append('file', file);

    const response = await axiosClient.post('/upload-csv', formData, {
      headers: {
        'Content-Type': 'multipart/form-data',
      },
    });

    setResponseMessage(response.data.message);
   
    fetchProducts(currentPage);
  } catch (error) {
    console.error('Error uploading CSV:', error);
    setResponseMessage('Error uploading CSV');
    setFile(null);
    const fileInput = document.getElementById('fileInput'); 
    if (fileInput) {
      fileInput.value = '';
    }
   } finally {
      clearResponseMessageAfterDelay(); // Clear response 
    }
  };

  const clearResponseMessageAfterDelay = () => {
    setTimeout(() => {
      setResponseMessage('');
    }, 4000);
  };


  return (
    <div>
{/* test */}
<div>
          <h2>Upload CSV</h2>
          <input type="file" id='fileInput' accept=".csv" onChange={handleFileChange} />
          <button className='btn btn-info' onClick={handleUpload}>Upload</button>
          {responseMessage && <p className='alert'>{responseMessage}</p>}
        </div>


{/* test */}



    <div style={{display: 'flex', justifyContent: "space-between", alignItems: "center"}}>
      <h2>Product Details</h2>
      </div>
    <div className="card animated fadeInDown">

<table>
          <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>SKU</th>
            <th>Description</th>
           
          </tr>
          </thead>
         
            
          
         
            <tbody>
            {products.length === 0 ? (
  <tr>
    <td colSpan="5">No products found</td>
  </tr>
) : (products.map(product => (
              <tr key={product.id}>
                <td>{product.id}</td>
                <td>{product.name}</td>
                <td>{product.price}</td>
                <td>{product.sku}</td>
                <td>{product.description}</td>
                
              </tr>
            ))
          )}
            </tbody>
           
        </table>
        <div style={{display: 'flex', justifyContent: "space-between", alignItems: "center"}}>

        <button className='btn btn-next' onClick={() => handlePageChange(currentPage - 1)} disabled={currentPage === 1}>Previous</button>
{products.length === 0 ? (
  <p>0 pages</p>
) : (
  <p>Showing page {currentPage} of {totalPage}</p>
)}      <button className='btn btn-next' onClick={() => handlePageChange(currentPage + 1)} disabled={currentPage === totalPage}>Next</button>
</div>


   
   </div>
</div>
  )
}
