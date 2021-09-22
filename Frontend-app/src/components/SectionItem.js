import React from 'react';
import { withRouter } from 'react-router';

import * as APIs from '../utils/APIs';



class SectionItem extends React.Component {


    onCartClick = () => {

        APIs.isAuth().then((response) => {

            if (response.data.loggedIn === false) {

                let linkTarget = {
                    pathname: "/login",
                    state: {
                        message: "You have to login beforing adding to cart"
                    }
                }
                this.props.history.push(linkTarget);
            }
            else {
                APIs.addToCart({ product_id: this.props.product.product_id });
                this.props.onItemClick(this.props.product.name);
            }
        });
    }

    render() {
        return (

            <div className="col mb-15" style={{ width: '360px', height: '480px' }}>
                <div className="card h-100" >

                    <div className="badge bg-dark text-white position-absolute" style={{ top: '0.5rem', right: '0.5rem' }}>Sale</div>

                    <div style={{ textAlign: 'center' }}>
                        <img className="card-img-top" src={this.props.product.imageURL} alt="product" style={{ width: "200px" }} />
                    </div>
                    <div className="card-body p-4">
                        <div className="text-center">
                            <h5 className="fw">{this.props.product.name}</h5>

                        </div>
                    </div>
                    <div className="card-footer p-4 pt-0 border-top-0 bg-transparent text-center">

                        <div className="d-flex justify-content-center small text-warning mb-2">
                            <div className="bi-star-fill"></div>
                            <div className="bi-star-fill"></div>
                            <div className="bi-star-fill"></div>
                            <div className="bi-star-fill"></div>
                            <div className="bi-star-fill"></div>
                        </div>

                        <span className="text-muted" style={{ fontSize: '20px' }}>${this.props.product.price}</span>

                        <div style={{ marginTop: '10px' }} className="text-center"><button onClick={this.onCartClick} style={{ width: '170px' }} className="btn btn-outline-success" >Add to cart</button></div>
                    </div>

                </div>
            </div>
        );
    }
}

export default withRouter(SectionItem);