import React from 'react';
import { withRouter } from 'react-router';



class Header extends React.Component {
    render() {
        return (
            <header className="bg-dark py-5">
                <div className="container px-4 px-lg-5 my-5">
                    <div className="text-center text-white">
                        <h1 className="display-4 fw-bolder">Shop in style</h1>
                        <p className="lead fw-normal text-white-50 mb-0">Shop in style is where fashion happens, Find the latest fashion designers here</p>
                    </div>
                </div>
            </header>
        );
    }
}

export default withRouter(Header);