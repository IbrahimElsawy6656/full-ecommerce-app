import React from 'react';
import { withRouter } from 'react-router';

class OrderRow extends React.Component {


    calQuantity = () => {

        let quantity = 0;

        JSON.parse(this.props.row.order_details).map((item) => {
            return quantity += item.quantity;
        });

        return quantity;
    }

    render() {
        return (

            <tr>
                <td>#{this.props.row.order_id}</td>
                <td>{this.props.row.created.substring(0, 10)}</td>
                <td>{this.calQuantity()}</td>
                <td>{this.props.row.amount}</td>
                <td><span className="label label-primary">{this.props.row.status}</span></td>
            </tr>

        );
    }
}


export default withRouter(OrderRow);
