import React from "react";

import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import formSerialize from 'form-serialize';

import * as APIs from '../utils/APIs';

import "../CSS/login.css";

import Footer from '../components/Footer';


class Login extends React.Component {

    state = {
        error: ' ',
        message: ' '
    }


    login = (event) => {

        event.preventDefault();
        const data = formSerialize(event.target, { hash: true });

        APIs.login(data).then((response) => {
            if (response.data.message) {
                this.setState({ message: ' ', error: response.data.message });

            } else {
                this.props.onLogin();
                let linkTarget = {
                    pathname: "/",
                    state: {
                        message: "logged in"
                    }
                }
                this.props.history.push(linkTarget);
            }

        });

    };

    componentDidMount() {

        APIs.isAuth().then((response) => {

            if (response.data.loggedIn === true) {

                let linkTarget = {
                    pathname: "/",
                    state: {
                        message: "logged in"
                    }
                }
                this.props.history.push(linkTarget);
            }
        });

        if (this.props.location.state) {
            this.setState({ message: this.props.location.state.message });
        }


    }


    render() {
        return (
            <div>
                <nav className="navbar navbar-expand-lg navbar-light bg-light">
                    <div className="container px-4 px-lg-5">
                        <div className="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul className="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                                <li className="nav-item"><Link className="nav-link active" aria-current="page" to={"/"}>Home</Link></li>
                                <li className="nav-item"><Link className="nav-link" to={"/about"}>About</Link></li>

                                <li className="nav-item dropdown">
                                    <Link to={"/"} className="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categories</Link>
                                    <ul className="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><Link to={"/"} className="dropdown-item">All Products</Link></li>
                                        <li><hr className="dropdown-divider" /></li>
                                        <li><Link to={"/"} className="dropdown-item" >Popular Items</Link></li>
                                        <li><Link to={"/"} className="dropdown-item" >New Arrivals</Link></li>
                                        <li><Link to={"/"} className="dropdown-item" >Electronics</Link></li>
                                        <li><Link to={"/"} className="dropdown-item" >Home</Link></li>
                                        <li><Link to={"/"} className="dropdown-item" >Video Games</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div className="login">
                    <div className="logo-section">
                    </div>
                    <div className="body-section-login">
                        <h1 className="sign-in-header">Sign in</h1>
                        <h6 className="error-header">{this.state.error}</h6>
                        <h6 className="message-header">{this.state.message}</h6>
                        <form onSubmit={this.login} className="sign-i-form">
                            <div className="mb-3">
                                <label htmlFor="email" className="form-label">Email</label>
                                <input type="text" className="form-control" id="email" name="email" placeholder="example@example.com" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="password" className="form-label">Password</label>
                                <input type="password" className="form-control" id="password" name="password" placeholder="*******" required />
                            </div>
                            <div className="submit-btn">
                                <button type="submit" className="login-btn btn btn-outline-success">Login</button>
                            </div>
                        </form>
                        <div className="container-fluid">
                            <Link className="navbar-brand" to={"/registration"}>Dont have an account?</Link>

                        </div>
                    </div>
                </div>
                <Footer />

            </div >
        );
    }
}


export default withRouter(Login);
