import React from 'react';
import { withRouter } from 'react-router';


class Footer extends React.Component {
    render() {
        return (
            <footer className="py-3 bg-dark" style={{ marginTop: '25px', textAlign: 'center' }}>
                <div>
                    <p className="m-0 text-center text-white">Copyright &copy; VOLORO 2022</p>
                </div>
                <div style={{ paddingTop: '14px' }}>
                    <a href="http://facebook.com"><i style={{ fontSize: '2rem', color: 'cornflowerblue', marginLeft: '14px' }} className="bi-instagram"></i></a>
                    <a href="http://facebook.com"><i style={{ fontSize: '2rem', color: 'cornflowerblue', marginLeft: '14px' }} className="bi-facebook"></i></a>
                    <a href="http://facebook.com"><i style={{ fontSize: '2rem', color: 'cornflowerblue', marginLeft: '14px' }} className="bi-twitter"></i></a>
                    <a href="http://facebook.com"><i style={{ fontSize: '2rem', color: 'cornflowerblue', marginLeft: '14px' }} className="bi-google"></i></a>
                </div>
                <div style={{ paddingTop: '14px' }}>
                    <ul className="list-inline">
                        <li className="list-inline-item"><a href="http://facebook.com">Privacy</a></li>
                        <li className="list-inline-item"><a href="http://facebook.com">Terms</a></li>
                        <li className="list-inline-item"><a href="http://facebook.com">Support</a></li>
                    </ul>
                </div>
            </footer >
        );
    }
}

export default withRouter(Footer);