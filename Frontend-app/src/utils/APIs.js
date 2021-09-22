import Axios from "axios";
Axios.defaults.withCredentials = true;

// --------------------------------- CART ------------------------------------------

//data = {product_id: XXX}

export const addToCart = (data) =>
    Axios.post("http://localhost:5001/cart/get-cart", { withCredentials: true }).then(res => {

        if (!res.data.message) {

            let result = res.data.filter(item => {
                return item.product_id === data.product_id
            });

            if (result.length > 0) {
                data.quantity = result[0].quantity + 1;
                updateCart(data);
            }
            else {
                Axios.post("http://localhost:5001/cart/add-to-cart", data, { withCredentials: true });
            }
        }
        else {
            Axios.post("http://localhost:5001/cart/add-to-cart", data, { withCredentials: true });
        }

    })

export const getCart = () =>
    Axios.post("http://localhost:5001/cart/get-cart", { withCredentials: true })

//data = {product_id: XXX}
export const deleteFromCart = (data) =>
    Axios.post("http://localhost:5001/cart/delete-from-cart", data, { withCredentials: true })

export const deleteAllCart = () =>
    Axios.post("http://localhost:5001/cart/delete-cart", { withCredentials: true })

//data = {product_id: XXX, quantity: XXX}
export const updateCart = (data) =>
    Axios.post("http://localhost:5001/cart/update-cart", data, { withCredentials: true })


// --------------------------------- PROMO ------------------------------------------

//data = {promo_code: XXX, status: XXX}
export const updatePromo = (data) =>
    Axios.post("http://localhost:5001/promo/update-promo", data, { withCredentials: true })

//data = {promo_code: XXX, discount: XXX}
export const addPromo = (data) =>
    Axios.post("http://localhost:5001/promo/add-promo", data, { withCredentials: true })

export const checkPromo = (data) =>
    Axios.post("http://localhost:5001/promo/check-promo", data, { withCredentials: true })


// --------------------------------- ORDER ------------------------------------------

//data = { promo_code: XXX }
export const addOrder = (data) =>
    Axios.post("http://localhost:5001/orders/add-order", data, { withCredentials: true })

export const getAllOrders = () =>
    Axios.post("http://localhost:5001/orders/get-all-orders", { withCredentials: true })

export const deleteOrder = () =>
    Axios.post("http://localhost:5001/orders/delete-order", { withCredentials: true })

export const getMyOrder = (data) =>
    Axios.post("http://localhost:5001/orders/get-my-order", data, { withCredentials: true })


// --------------------------------- USER ------------------------------------------

//data = {email, password, type, address, date_of_birth, full_name }
export const addUser = (data) =>
    Axios.post("http://localhost:5001/users/add-user", data, { withCredentials: true })

export const isAuth = () =>
    Axios.get("http://localhost:5001/users/isAuth", { withCredentials: true })

//data = {email, password}
export const login = (data) =>
    Axios.post("http://localhost:5001/users/login", data, { withCredentials: true })

export const getAllUsers = () =>
    Axios.post("http://localhost:5001/users/get-all-users", { withCredentials: true })

export const logout = () =>
    Axios.post("http://localhost:5001/users/logout", { withCredentials: true })

// --------------------------------- PRODUCT ------------------------------------------

//data = {product_id}

export const getProduct = (data) =>
    Axios.post("http://localhost:5001/products/get-product", data, { withCredentials: true })

export const getAllProducts = () =>
    Axios.post("http://localhost:5001/products/get-all-products", { withCredentials: true })
