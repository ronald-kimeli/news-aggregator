import {createBrowserRouter, Navigate} from "react-router-dom";
import RecoverPassword from "./auth/RecoverPassword.jsx";
import Register from './auth/Register';
import Login from './auth/Login';
import GuestLayout from "./Layouts/GuestLayout.jsx";
import DefaultLayout from "./Layouts/DefaultLayout.jsx";
import NewsLayout from "./Layouts/NewsLayout.jsx";
import NotFound from "./components/NotFound.jsx";

const router = createBrowserRouter([
  {
    path: '/',
    element: <DefaultLayout/>,
    children: [
      {
        path: '/',
        element: <Navigate to="/newsaggregator"/>
      },
      {
        path: "/newsaggregator",
        element: <NewsLayout/>
      }
    ]
  },
  {
    path: '/',
    element: <GuestLayout/>,
    children: [
      {
        path: '/login',
        element: <Login/>
      },
      {
        path: '/signup',
        element: <Register/>
      },
      {
        path: '/recoverpassword',
        element: <RecoverPassword/>
      },
    ]
  },
  {
    path: "*",
    element: <NotFound/>
  }

])

export default router;
