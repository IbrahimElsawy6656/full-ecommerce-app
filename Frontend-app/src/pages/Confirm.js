import React from "react";
import { withRouter } from 'react-router';



class Confirm extends React.Component {

    componentDidMount() {

        if (!this.props.location.state) {

            let linkTarget = {
                pathname: "/",
                state: {
                    message: "not auth"
                }
            }
            this.props.history.push(linkTarget);
        }

        setTimeout(() => { this.props.history.push("/") }, 5000);
    }


    render() {
        return (

            <div>
                <div className="py-5 text-center">
                    <h2>Your items has been ordered</h2>
                    <p className="lead">A confirmation email will be sent to your email address</p>
                    <p className="lead">Redirecting to home page in 5 seconds</p>
                </div>

            </div >
        );
    }
}


export default withRouter(Confirm);
