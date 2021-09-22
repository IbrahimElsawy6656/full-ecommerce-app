import React from 'react';
import SectionItem from './SectionItem';
import { withRouter } from 'react-router';


class SectionList extends React.Component {

    state = {
        currentPage: 1,
    }

    renderProducts = () => {

        return this.props.pages[this.state.currentPage].map((product) => {
            return (<SectionItem onItemClick={this.props.onItemClick} key={product.product_id} product={product} />);
        });
    }

    previous = () => {
        let oldValue = this.state.currentPage;
        if (oldValue !== 1) {
            this.setState({ currentPage: oldValue - 1 });
        }
    }

    next = () => {
        let oldValue = this.state.currentPage;
        if (oldValue !== Object.keys(this.props.pages).length - 1) {
            this.setState({ currentPage: oldValue + 1 });

        }
    }

    render() {

        return (
            <div>
                <section className="py-5">
                    <div className="px-4 px-lg-5 mt-5">
                        <div className="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            {this.renderProducts()}
                        </div>
                    </div>
                </section >
                <nav aria-label="Page navigation example">
                    <ul className="pagination justify-content-center">
                        <li className="page-item">
                            <button className="page-link" onClick={this.previous}>Previous</button>
                        </li>
                        <li className="page-link" style={{ color: 'black' }}>Page {this.state.currentPage}</li>
                        <li className="page-item">
                            <button className="page-link" style={{ width: '86px' }} onClick={this.next} >Next</button>
                        </li>
                    </ul>
                </nav>
            </div >


        );
    }
}

export default withRouter(SectionList);