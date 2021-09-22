import React from "react";
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import formSerialize from 'form-serialize';

import "../CSS/registration.css";

import * as APIs from '../utils/APIs';

import Footer from '../components/Footer';

class Registration extends React.Component {


  state = {
    message: ' ',
    logged: false
  }

  register = (event) => {

    event.preventDefault();
    const data = formSerialize(event.target, { hash: true });

    if (data.password !== data.re_password) {
      this.setState({
        message: 'Passwords doesnt match'
      })
      return;

    } else {
      this.setState({
        message: ' '
      })
    }

    data.full_name = data.first_name + ' ' + data.last_name;

    APIs.addUser(data)
      .then((response) => {

        if (response.data.message) {
          this.setState({ logged: false, message: response.data.message });
        }
        else {
          let linkTarget = {
            pathname: "/login",
            state: {
              message: "Registration has been completed, you can login now"
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

        <div className="registration">

          <div className="logo-section" style={{ display: 'none' }}>
          </div>
          <div className="body-section">
            <h1 className="register-header">Registration</h1>
            <h6 className="error-header">{this.state.message}</h6>
            <form onSubmit={this.register} className="register-form">

              <div className="row g-3">
                <div className="col">
                  <label htmlFor="first-name" className="form-label">First Name</label>
                  <input type="text" className="form-control" id="first-name" name="first_name" placeholder="John" required />
                </div>
                <div className="col">
                  <label htmlFor="last-name" className="form-label">Last Name</label>
                  <input type="text" className="form-control" id="last-name" name="last_name" placeholder="Wick" required />
                </div>
              </div>

              <div className="row g-3">
                <div className="col">
                  <label htmlFor="email" className="form-label">Email Address</label>
                  <input type="text" className="form-control" id="email" name="email" placeholder="example@example.com" required />
                </div>
                <div className="col">
                  <label htmlFor="phone" className="form-label">Phone Number</label>
                  <input type="text" className="form-control" id="phone" name="phone" placeholder="01xxxxxxx" required />
                </div>
              </div>

              <div className="row g-3">
                <div className="col">
                  <label htmlFor="address" className="form-label">Address</label>
                  <input type="text" className="form-control" id="address" name="address" placeholder="111, disney land street" required />
                </div>
                <div className="col">
                  <label htmlFor="date" className="form-label">Date of Birth</label>
                  <input type="date" className="form-control" id="date" name="date_of_birth" required />
                </div>
              </div>
              <div className="row g-3">
                <div className="col">
                  <label htmlFor="password" className="form-label">Password</label>
                  <input type="password" className="form-control" id="password" name="password" placeholder="*******" required />
                </div>
                <div className="col">
                  <label htmlFor="re-password" className="form-label">Re-enter Password</label>
                  <input type="password" className="form-control" id="re-password" name="re_password" placeholder="*******" required />
                </div>
              </div>

              <div className="submit-btn">
                <button type="submit" className="reg-btn btn btn-outline-success">Register</button>
              </div>
              <div className="container-fluid">
                <Link className="navbar-brand" to={"/login"}>Already have an account?</Link>
              </div>
            </form>
          </div>
        </div >
        <Footer />
      </div>
    );
  }

}


export default withRouter(Registration);
