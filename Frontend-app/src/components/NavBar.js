import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';


class NavBar extends React.Component {

    render() {
        return (
            <nav className="navbar navbar-expand-lg navbar-light bg-light">
                <div className="container px-4 px-lg-5">
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                            <li className="nav-item"><Link className="nav-link active" aria-current="page" to={"/"}>Home</Link></li>
                            <li className="nav-item"><Link className="nav-link" to={"/"}>About</Link></li>

                            <li className="nav-item dropdown">
                                <Link to={"/"} className="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categories</Link>
                                <ul to={"/"} className="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><Link to={"/"} className="dropdown-item" >All Products</Link></li>
                                    <li><hr className="dropdown-divider" /></li>
                                    <li><Link to={"/"} className="dropdown-item" >Popular Items</Link></li>
                                    <li><Link to={"/"} className="dropdown-item" >New Arrivals</Link></li>
                                    <li><Link to={"/"} className="dropdown-item" >Electronics</Link></li>
                                    <li><Link to={"/"} className="dropdown-item" >Home</Link></li>
                                    <li><Link to={"/"} className="dropdown-item">Video Games</Link></li>
                                </ul>
                            </li>
                        </ul>
                        <div className="d-flex">

                            {this.props.logged &&
                                (
                                    <div>
                                        <Link to={"/cart"} className="logout-btn btn btn-outline-dark">
                                            <i className="bi-cart me-1"></i>
                                            My cart
                                        </Link>
                                        <Link to={"/orders"} className="logout-btn btn btn-outline-dark">
                                            <i className="bi-box me-1"></i>
                                            My orders</Link>
                                        <button className="logout-btn btn btn-outline-dark" onClick={this.props.onLogout}>Logout</button>
                                    </div>
                                )
                            }
                            {!this.props.logged &&
                                (
                                    <div className="login-container">
                                        <Link to={"/login"} className="login-btn btn btn-outline-dark">Login</Link>
                                        <Link to={"/registration"} className="login-btn btn btn-outline-dark">Sign Up</Link>
                                    </div>
                                )
                            }
                        </div>
                    </div>
                </div>
            </nav>
        );
    }
}

export default withRouter(NavBar);