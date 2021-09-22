import React from 'react';
import { withRouter } from 'react-router';
import CartItem from '../components/CartItem';



class CartList extends React.Component {

    state = {
        total: 0
    }

    renderCartList = () => {
        return this.props.cartList.map((item) => {
            return (<CartItem key={item.product_id} item={item} onCartItemUpdate={this.props.onCartItemUpdate} onCartItemDelete={this.props.onCartItemDelete} />);
        });
    }

    deleteAllCart = () => {
        this.props.deleteAllCart();
    }

    render() {
        return (
            <div>
                <div className="header">
                    <div className="row" style={{ fontSize: '22px' }}>
                        <div className="col-4" >
                            Item Name
                        </div>
                        <div className="col">
                            Item Price
                        </div>
                        <div className="col">
                            Item Quantity
                        </div>
                        <div className="col">
                            Total
                        </div>
                        <div className="col">
                        </div>
                        <hr className="my-4" />
                    </div>
                </div>
                <div className="items">
                    {this.renderCartList()}
                </div>
                <button className=" btn btn-outline-danger" onClick={this.deleteAllCart} style={{ float: 'right', marginRight: '132px' }}>Delete My Cart</button>
                <h3>Total: &nbsp; &nbsp; ${this.props.total}</h3>
            </div>
        );
    }
}

export default withRouter(CartList);