import React from 'react';
import { withRouter } from 'react-router';

import "../CSS/main-page.css";

import Footer from '../components/Footer';
import NavBar from '../components/NavBar';
import Header from '../components/Header';
import SectionList from '../components/SectionList';

class MainPage extends React.Component {

  state = {
    clicked: 'hidden',
    productName: ''
  }

  renderPages = () => {

    let count = 0;
    let index = 1;
    let arr = [];
    let pages = {
      1: []
    };

    this.props.products.map((product) => {

      if (count === 12) {

        pages[index] = arr;

        arr = [];
        index++;
        count = 0;
      }

      arr.push(product);
      return count++;
    })


    return pages;

  }

  onItemClick = (name) => {

    this.setState({ productName: name, clicked: '' });

    setTimeout(() => { this.setState({ clicked: 'hidden' }) }, 2500);

  }

  render() {

    return (

      <div className="main-page">

        <NavBar cartValue={this.props.cartValue} logged={this.props.logged} onLogout={this.props.onLogout} />
        <Header />
        <SectionList onItemClick={this.onItemClick} products={this.props.products} pages={this.renderPages()} />
        <aside className={`noti ${this.state.clicked}`}>{this.state.productName} has been added to cart</aside>
        <Footer />

      </div >

    );

  }

}

export default withRouter(MainPage);
