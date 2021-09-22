import React from 'react';
import { withRouter } from 'react-router';
import * as APIs from '../utils/APIs';


class CartItem extends React.Component {

    state = {
        value: 1,
        item: {}
    }

    decrement = () => {

        let oldValue = this.state.value;
        if (oldValue > 1) {

            APIs.updateCart({ product_id: this.state.item.product_id, quantity: (oldValue - 1) });
            this.props.onCartItemUpdate(this.state.item.product_id, oldValue - 1);
            this.setState({ value: oldValue - 1 });
        }
    }

    increment = () => {

        let oldValue = this.state.value;
        if (oldValue < 9) {

            APIs.updateCart({ product_id: this.state.item.product_id, quantity: (oldValue + 1) });
            this.props.onCartItemUpdate(this.state.item.product_id, oldValue + 1);
            this.setState({ value: oldValue + 1 });
        }
    }

    deleteItem = () => {
        APIs.deleteFromCart({ product_id: this.state.item.product_id });
        this.props.onCartItemDelete(this.state.item.product_id);
    }

    componentDidMount() {
        this.setState({ value: this.props.item.quantity });
        APIs.getProduct({ product_id: this.props.item.product_id }).then(res => {
            this.props.item.name = res.data[0].name;
            this.setState({ item: this.props.item })
        });
    }


    render() {

        const { price, name, quantity } = this.state.item;
        return (

            <div className="row" style={{ fontSize: '17px' }}>
                <div className="col-4" >
                    {name}
                </div>
                <div className="col">
                    ${price}
                </div>
                <div className="col">
                    <span className="input-number-decrement" onClick={this.decrement}>–</span>
                    <input className="input-number" type="text" value={this.state.value} min="0" max="10" />
                    <span className="input-number-increment" onClick={this.increment} >+</span>
                </div>
                <div className="col">
                    ${price * quantity}
                </div>
                <div className="col">
                    <i className="bi-x-lg" onClick={this.deleteItem} style={{ fontSize: '30px', cursor: 'pointer' }}></i>
                </div>
                <hr className="my-4" />
            </div>
        );
    }
}

export default withRouter(CartItem);