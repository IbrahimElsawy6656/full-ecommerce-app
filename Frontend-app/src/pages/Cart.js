import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import "../CSS/cart.css";

import Footer from '../components/Footer';
import NavBar from '../components/NavBar';
import CartList from '../components/CartList';

import * as APIs from '../utils/APIs';


class Cart extends React.Component {

    state = {
        cartList: [],
        message: ''
    }

    componentDidMount() {

        APIs.isAuth().then((response) => {
            if (response.data.loggedIn === false) {

                let linkTarget = {
                    pathname: "/login",
                    state: {
                        message: "You have to login first in order to see your cart"
                    }
                }
                this.props.history.push(linkTarget);
            }
            else {
                APIs.getCart().then(res => {
                    if (res.data.message) {
                        this.setState({ cartList: [], message: "Add some items in order to see your cart" })
                    }
                    else
                        this.setState({ cartList: res.data, message: '' })
                });
            }
        });

    }

    calTotal = () => {

        let total = 0;
        this.state.cartList.map((item) => {
            return total += item.price * item.quantity;
        });

        return total;
    }

    onCartItemUpdate = (product_id, quantity) => {

        let newValue = this.state.cartList.map((item) => {
            if (item.product_id === product_id) {
                item.quantity = quantity
            }

            return item;
        });
        this.setState({ cartList: newValue });
    }

    onCartItemDelete = (product_id) => {

        let newValue = this.state.cartList.filter((item) => {
            return item.product_id !== product_id
        });

        if (newValue.length === 0)
            this.setState({ cartList: [], message: "Add some items in order to see your cart" });
        else
            this.setState({ cartList: newValue, message: '' })
    }

    deleteAllCart = () => {
        this.setState({ cartList: [], message: "Add some items in order to see your cart" });
        APIs.deleteAllCart();
    }

    checkout = () => {

        let total = this.calTotal();

        let linkTarget = {
            pathname: "/checkout",
            state: {
                cart: this.state.cartList,
                total: total
            }
        }

        return linkTarget;
    }

    render() {
        return (

            <div>
                <NavBar logged={this.props.logged} onLogout={this.props.onLogout} />

                <div className="py-5 text-center">
                    <h2>My Cart</h2>
                    <p className="lead">These are the items you added to the cart</p>
                </div>

                {this.state.message === '' ?
                    (
                        <div className="container">

                            <CartList message={this.state.message} cartList={this.state.cartList} total={this.calTotal()} onCartItemUpdate={this.onCartItemUpdate} onCartItemDelete={this.onCartItemDelete} deleteAllCart={this.deleteAllCart} />
                            <div style={{ textAlign: 'center' }}>
                                <Link to={this.checkout} style={{ marginTop: '20px', width: '500px' }} className="w-90 btn btn-primary btn-lg" type="submit">Continue To Checkout</Link>
                            </div>

                        </div>
                    ) : (
                        <div className="py-5 text-center">
                            <p className="lead" style={{ fontSize: '22px' }}>
                                {this.state.message}</p>
                            <Link to={"/"} className="btn btn-outline-success">Continue Shopping</Link>
                        </div>
                    )}


                <Footer />
            </div >
        );
    }

}

export default withRouter(Cart);