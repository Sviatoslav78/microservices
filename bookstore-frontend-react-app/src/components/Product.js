import React from 'react';
import { BACKEND_API_GATEWAY_URL } from '../constants/appConstants';
import { Card } from 'react-bootstrap';
import { Link } from 'react-router-dom';

const Product = (props) => {
  const product = props.product;
  return (
    <>
      <Card className='my-3 rounded' style={{ height: '400px' }}>
        <Link to={`/product/${product.productId}`}>
          <Card.Img
            src={`${BACKEND_API_GATEWAY_URL}/api/catalog/image/${product?.imageId}`}
            variant='top'
            style={{ height: '300px' }}
          ></Card.Img>
        </Link>
        <Card.Body>
          <Link to={`/product/${product.productId}`}>
            <Card.Title as='div'>
              <strong>{product.productName}</strong>
            </Card.Title>
          </Link>

          <Card.Text as='div' className='my-3'>
            <h2>${product.price}</h2>
          </Card.Text>
        </Card.Body>
      </Card>
    </>
  );
};

export default Product;
