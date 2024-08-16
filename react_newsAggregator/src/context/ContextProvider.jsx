import {createContext, useContext, useState} from "react";
import { ToastContainer, toast } from 'react-toastify';

const StateContext = createContext({
  currentUser: null,
  token: null,
  notification: null,
  setNews: () => [],
  setAuthors: () => [],
  setUser: () => {},
  setToken: () => {},
  setNotification: () => {}
})

export const ContextProvider = ({children}) => {
  const [news, setNews] = useState([]);
  const [authors, setAuthors] = useState([]);
  const [user, setUser] = useState({});
  const [token, _setToken] = useState(localStorage.getItem('ACCESS_TOKEN'));
  const [notification, _setNotification] = useState('');


  const setToken = (token) => {
    _setToken(token)
    if (token) {
      localStorage.setItem('ACCESS_TOKEN', token);
    } else {
      localStorage.removeItem('ACCESS_TOKEN');
    }
  }

  const setNotification = message => {
    _setNotification(message);


    toast.success(message, {
      position: "top-center",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      draggable: true,
      progress: undefined,
      theme: "colored",
    });
  }

  return (
    <StateContext.Provider value={{
      user,
      setUser,
      token,
      setToken,
      authors,
      setAuthors,
      news,
      setNews,
      notification,
      setNotification
    }}>
      {children}
    </StateContext.Provider>
  );
}

export const useStateContext = () => useContext(StateContext);
