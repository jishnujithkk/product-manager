import {createBrowserRouter} from "react-router-dom";
import Login from "./views/Login.jsx";
import Signup from "./views/Signup.jsx";
import Dashboard from "./views/Dashboard.jsx";
import Notfound from "./views/Notfound.jsx";

const router = createBrowserRouter( {routes: [
    {
        path:'/login',
        element: <Login />
    },
    {
        path:'/signup',
        element: <Signup />
    },

    {
        path:'/dashboard',
        element: <Dashboard />
    },
    {
        path:'*',
        element: <Notfound />
    },
]})
export default router;