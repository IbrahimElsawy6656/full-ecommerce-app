import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

import NavBar from '../components/NavBar';
import OrderRow from '../components/OrderRow';

import * as APIs from '../utils/APIs';


class Orders extends React.Component {

    state = {
        orders: []
    }

    componentDidMount() {

        APIs.isAuth().then((response) => {
            if (response.data.loggedIn === false) {

                let linkTarget = {
                    pathname: "/login",
                    state: {
                        message: "You have to login first to see your orders"
                    }
                }
                this.props.history.push(linkTarget);
            }
            else {
                APIs.getMyOrder().then(res => {
                    if (res.data.message) {
                        this.setState({ orders: [], message: "You currently have no orders" })
                    }
                    else
                        this.setState({ orders: res.data, message: '' })
                });
            }
        });
    }

    renderBody = () => {
        return this.state.orders.map((item) => {
            return <OrderRow key={item.order_id} row={item} />
        });
    }
    render() {
        return (

            <div>
                <NavBar logged={this.props.logged} onLogout={this.props.onLogout} />
                <div className="container" style={{ marginTop: '35px' }}>
                    <div className="row">
                        <div className="col-md-12">
                            <div className="dashboard-wrapper user-dashboard">
                                <div className="table-responsive">
                                    {this.state.message === '' ?
                                        (
                                            <table className="table">
                                                <thead>
                                                    <tr>
                                                        <th>Order ID</th>
                                                        <th>Date</th>
                                                        <th>Items</th>
                                                        <th>Total Price</th>
                                                        <th>Status</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {this.renderBody()}
                                                </tbody>
                                            </table>

                                        ) : (
                                            <div className="py-5 text-center">
                                                <p className="lead" style={{ fontSize: '22px' }}>
                                                    {this.state.message}</p>
                                                <Link to={"/"} className="btn btn-outline-success">Go Shopping</Link>
                                            </div>
                                        )}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div >
        );
    }
}


export default withRouter(Orders);
