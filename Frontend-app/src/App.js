import React from "react";
import { Route } from "react-router-dom";
import { withRouter } from 'react-router';

import MainPage from "./pages/MainPage";
import Registration from "./pages/Registration";
import Login from "./pages/Login";
import Cart from "./pages/Cart";
import Checkout from "./pages/Checkout";
import Confirm from "./pages/Confirm";
import Orders from "./pages/Orders";

import * as APIs from './utils/APIs';

class App extends React.Component {

  state = {
    logged: false,
    products: []
  }

  componentDidMount() {

    APIs.getAllProducts().then(res => {
      this.setState({ products: res.data });
    });

    APIs.isAuth().then((response) => {
      if (response.data.loggedIn === true) {
        this.setState({ logged: true });
      }
    });

  }


  onLogout = () => {

    APIs.logout().then((response) => {

      if (response.data.message) {

        this.setState({ logged: false });
        let linkTarget = {
          pathname: "/",
          state: {
            message: "logged out"
          }
        }
        this.props.history.push(linkTarget);
      }

    });

  }

  onLogin = () => {
    this.setState({ logged: true });
  }

  render() {
    return (
      <div>
        <Route path="/registration" exact render={(props) => <Registration />} />
        <Route path="/" exact render={(props) => <MainPage products={this.state.products} logged={this.state.logged} onLogout={this.onLogout} />} />
        <Route path="/login" exact render={(props) => <Login onLogin={this.onLogin} />} />
        <Route path="/cart" exact render={(props) => <Cart logged={this.state.logged} onLogout={this.onLogout} />} />
        <Route path="/checkout" exact render={(props) => <Checkout logged={this.state.logged} onLogout={this.onLogout} />} />
        <Route path="/confirm" exact render={(props) => <Confirm />} />
        <Route path="/orders" exact render={(props) => <Orders logged={this.state.logged} onLogout={this.onLogout} />} />
      </div >

    );
  }
}

export default withRouter(App);
