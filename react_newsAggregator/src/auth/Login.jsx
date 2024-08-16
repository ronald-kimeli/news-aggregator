import { Link } from 'react-router-dom';
import axiosClient from "../axios-client.js";
import {createRef} from "react";
import {useStateContext} from "../context/ContextProvider.jsx";
import { useState } from "react";
import logo from '../assets/images/logo/leave2-logo.png';
import background from '../assets/images/backgrounds/bg-18.jpg';


const styles = {
  container: {
      backgroundImage: `url(${background})`,
      backgroundPosition: 'center',
      backgroundSize: 'cover',
      backgroundRepeat: 'no-repeat',
      width: '100vw',
      height: '100vh'
  }
};

const Login = () => {
  const emailRef = createRef()
  const passwordRef = createRef()
  const { setUser, setToken } = useStateContext()
  const [message, setMessage] = useState(null)
  const {setNotification} = useStateContext()

  const onSubmit = ev => {
    ev.preventDefault()

    const payload = {
      email: emailRef.current.value,
      password: passwordRef.current.value,
    }

    axiosClient.post('/login', payload)
      .then(({data}) => {
        setUser(data.user)
        setToken(data.token);
        setNotification('Logged In successfully')
      })
      .catch((err) => {
        const response = err.response;
        if (response && response.status === 422) {
          setMessage(response.data.message)
        }
      })
  }

  return (
      <div className="app-content content" style={styles.container} >
        <div className="content-wrapper">
          <div className="content-wrapper-before" />
          <div className="content-header row"></div>
          <div className="content-body">
            <section className="flexbox-container">
              <div className="col-12 d-flex align-items-center justify-content-center">
                <div className="col-lg-4 col-md-6 col-10 box-shadow-2 p-0">
                  <div className="card border-grey border-lighten-3 px-1 py-1 m-0">
                    <div className="card-header border-0">
                      <div className="text-center mb-1">
                        <img src={logo} style={{height:'80px',width:'87px'}} alt="branding logo" />
                      </div>
                      <div className="font-large-1  text-center">
                        Member Login
                      </div>
                    </div>
                    <div className="card-content">
                      <div className="card-body">
                        <form className="form-horizontal" onSubmit={onSubmit}>

                          {message && (
                            <div className="danger">
                              <p>{message}</p>
                            </div>
                          )}

                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="email"
                              ref={emailRef}
                              className="form-control round"
                              id="user-name"
                              placeholder="Enter Email"
                            />
                            <div className="form-control-position">
                              <i className="ft-mail" />
                            </div>
                          </fieldset>
                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="password"
                              ref={passwordRef}
                              className="form-control round"
                              id="user-password"
                              placeholder="Enter Password"
                            />
                            <div className="form-control-position">
                              <i className="ft-lock" />
                            </div>
                          </fieldset>
                          <div className="form-group row">
                            <div className="col-md-6 col-12 text-center text-sm-left"></div>
                            <div className="col-md-6 col-12 float-sm-left text-center text-sm-right">
                              <Link
                                to={'/recoverpassword'}
                                className="card-link"
                              >
                                Forgot Password?
                              </Link>
                            </div>
                          </div>
                          <div className="form-group text-center">
                            <button
                              type="submit"
                              className="btn round btn-block btn-glow btn-bg-gradient-x-purple-blue col-12 mr-1 mb-1"
                            >
                              Login
                            </button>
                          </div>
                        </form>
                      </div>
                      <p className="message card-subtitle line-on-side text-muted text-center font-small-3 mx-2 my-2 ">
                        <span>OR Sign Up Using</span>
                      </p>
                      <div className="text-center">
                        <Link
                          to="#"
                          className="btn btn-social-icon round mr-1 mb-1 btn-facebook"
                        >
                          <span className="ft-facebook" />
                        </Link>
                        <Link
                          to="#"
                          className="btn btn-social-icon round mr-1 mb-1 btn-twitter"
                        >
                          <span className="ft-twitter" />
                        </Link>
                        <Link
                          to="#"
                          className="btn btn-social-icon round mr-1 mb-1 btn-instagram"
                        >
                          <span className="ft-instagram" />
                        </Link>
                      </div>

                      <p className="card-subtitle text-muted text-right font-small-3 mx-2 my-1">
                        <span>
                          Don't have an account ?{" "}
                          <Link to={'/signup'} className="card-link">
                            Sign Up
                          </Link>
                        </span>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>

  );
}

export default Login
