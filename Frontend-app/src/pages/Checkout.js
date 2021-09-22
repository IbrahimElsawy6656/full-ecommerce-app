import React from 'react';
import { withRouter } from 'react-router';
import formSerialize from 'form-serialize';

import NavBar from '../components/NavBar';
import Footer from '../components/Footer';

import * as APIs from '../utils/APIs';

class Checkout extends React.Component {


    state = {
        cartList: [],
        total: 0,
        promo: {
            name: '',
            message: '',
            discount: 0,
        }
    }

    componentDidMount() {

        APIs.isAuth().then((response) => {

            if (response.data.loggedIn === false) {

                let linkTarget = {
                    pathname: "/login",
                    state: {
                        message: "You have to login first in order to checkout"
                    }
                }
                this.props.history.push(linkTarget);
            }
            else {
                if (!this.props.location.state) {
                    this.props.history.push("/cart");
                }
                else {
                    this.setState({ cartList: this.props.location.state.cart, total: this.props.location.state.total });
                }
            }
        });
    }

    renderCart = () => {

        return this.state.cartList.map((item) => {

            return (
                <li key={item.product_id} className="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 className="my-0">{item.name}</h6>
                        <small className="text-muted">quantity: {item.quantity}</small>
                    </div>
                    <span className="text-muted">${item.price * item.quantity}</span>
                </li>
            );
        });
    }

    redeem = (event) => {

        event.preventDefault();
        const data = formSerialize(event.target, { hash: true });

        if (data.promo_code) {

            APIs.checkPromo(data).then(res => {

                if (res.data.message) {
                    let promo = {
                        name: '',
                        message: res.data.message,
                        discount: 0
                    }
                    this.setState({ promo: promo, total: this.props.location.state.total });
                }
                else {

                    let promo = {
                        name: data.promo_code,
                        message: '',
                        discount: (res.data[0].discount * 0.01 * this.state.total)
                    }

                    let oldTotal = this.state.total;
                    this.setState({ promo: promo, total: oldTotal - promo.discount });
                }
            });
        }
    }

    confirmOrder = () => {

        APIs.addOrder({ promo_code: this.state.promo.name }).then(res => console.log(res));
        APIs.deleteAllCart();

        let linkTarget = {

            pathname: "/confirm",
            state: {
                token: "dawpadpnawd"
            }
        }
        this.props.history.push(linkTarget);
    }

    render() {
        return (
            <div>
                <NavBar logged={this.props.logged} onLogout={this.props.onLogout} />
                <div className="py-5 text-center">
                    <h2>Checkout</h2>
                    <p className="lead">Please fill the form below in order to complete your order</p>
                </div>

                <div className="row g-5">
                    <div className="col-md-5 col-lg-4 order-md-last">
                        <h4 className="d-flex justify-content-between align-items-center mb-3">
                            <span className="text-primary">Your cart</span>
                        </h4>
                        <ul className="list-group mb-3">

                            {this.renderCart()}

                            {this.state.promo.name &&
                                (<li className="list-group-item d-flex justify-content-between bg-light">
                                    <div className="text-success">
                                        <h6 className="my-0">Promo code</h6>
                                        <small>{this.state.promo.name}</small>
                                    </div>
                                    <span className="text-success">−${this.state.promo.discount}</span>
                                </li>
                                )}

                            <li className="list-group-item d-flex justify-content-between">
                                <span>Total (USD)</span>
                                <strong>{this.state.total}</strong>
                            </li>
                        </ul>

                        <form onSubmit={this.redeem} className="card p-2">
                            <div className="input-group">
                                <input type="text" className="form-control" placeholder="Promo code" name="promo_code" />
                                <button type="submit" className="btn btn-secondary" >Redeem</button>
                            </div>
                            <div className="text-center" style={{ marginTop: '15px', color: 'red' }}>
                                <strong>{this.state.promo.message}</strong>
                            </div>
                        </form>
                    </div>
                    <div className="col-md-7 col-lg-8">
                        <h4 className="mb-3">Billing address</h4>
                        <form className="needs-validation" >
                            <div className="row g-3">
                                <div className="col-sm-6">
                                    <label htmlFor="firstName" className="form-label">First name</label>
                                    <input type="text" className="form-control" id="firstName" placeholder="" required="" />
                                </div>

                                <div className="col-sm-6">
                                    <label htmlFor="lastName" className="form-label">Last name</label>
                                    <input type="text" className="form-control" id="lastName" placeholder="" required="" />
                                </div>

                                <div className="col-12">
                                    <label htmlFor="email" className="form-label">Email</label>
                                    <input type="email" className="form-control" id="email" placeholder="you@example.com" />
                                </div>

                                <div className="col-12">
                                    <label htmlFor="address" className="form-label">Address</label>
                                    <input type="text" className="form-control" id="address" placeholder="1234 Main St" required="" />
                                </div>

                                <div className="col-12">
                                    <label htmlFor="address2" className="form-label">Address 2 <span className="text-muted">(Optional)</span></label>
                                    <input type="text" className="form-control" id="address2" placeholder="Apartment or suite" />
                                </div>

                                <div className="col-md-5">
                                    <label htmlFor="country" className="form-label">Country</label>
                                    <select className="form-select" id="country" required="">
                                        <option hidden>Choose...</option>
                                        <option>United States</option>
                                    </select>
                                    <div className="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>

                                <div className="col-md-4">
                                    <label htmlFor="state" className="form-label">State</label>
                                    <select className="form-select" id="state" required="">
                                        <option hidden>Choose...</option>
                                        <option>California</option>
                                        <option>Florida</option>
                                    </select>
                                </div>

                                <div className="col-md-3">
                                    <label htmlFor="zip" className="form-label">Zip</label>
                                    <input type="text" className="form-control" id="zip" placeholder="" required />
                                </div>
                            </div>

                            <hr className="my-4" />

                            <div className="form-check">
                                <input type="checkbox" className="form-check-input" id="same-address" />
                                <label className="form-check-label" htmlFor="same-address">Shipping address is the same as my billing address</label>
                            </div>

                            <div className="form-check">
                                <input type="checkbox" className="form-check-input" id="save-info" />
                                <label className="form-check-label" htmlFor="save-info">Save this information for next time</label>
                            </div>

                            <hr className="my-4" />

                            <h4 className="mb-3">Payment</h4>

                            <div className="my-3">
                                <div className="form-check">
                                    <input id="credit" name="paymentMethod" type="radio" className="form-check-input" required="" />
                                    <label className="form-check-label" htmlFor="credit">Credit card</label>
                                </div>
                                <div className="form-check">
                                    <input id="debit" name="paymentMethod" type="radio" className="form-check-input" required="" />
                                    <label className="form-check-label" htmlFor="debit">Debit card</label>
                                </div>
                                <div className="form-check">
                                    <input id="paypal" name="paymentMethod" type="radio" className="form-check-input" required="" />
                                    <label className="form-check-label" htmlFor="paypal">PayPal</label>
                                </div>
                            </div>

                            <div className="row gy-3">
                                <div className="col-md-6">
                                    <label htmlFor="cc-name" className="form-label">Name on card</label>
                                    <input type="text" className="form-control" id="cc-name" placeholder="" required="" />
                                    <small className="text-muted">Full name as displayed on card</small>
                                </div>

                                <div className="col-md-6">
                                    <label htmlFor="cc-number" className="form-label">Credit card number</label>
                                    <input type="text" className="form-control" id="cc-number" placeholder="" required="" />
                                </div>

                                <div className="col-md-3">
                                    <label htmlFor="cc-expiration" className="form-label">Expiration</label>
                                    <input type="text" className="form-control" id="cc-expiration" placeholder="" required="" />
                                </div>

                                <div className="col-md-3">
                                    <label htmlFor="cc-cvv" className="form-label">CVV</label>
                                    <input type="text" className="form-control" id="cc-cvv" placeholder="" required="" />
                                </div>
                            </div>

                            <div style={{ textAlign: 'center' }}>
                                <button onClick={this.confirmOrder} style={{ marginTop: '25px', width: '500px' }} className="w-90 btn btn-primary btn-lg" type="submit">Complete Order</button>
                            </div>
                        </form>
                    </div>
                </div>

                <Footer />
            </div >
        );
    }
}


export default withRouter(Checkout);