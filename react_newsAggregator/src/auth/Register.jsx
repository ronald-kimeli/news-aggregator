import {createRef, useState} from "react";
import axiosClient from "../axios-client.js";
import {useStateContext} from "../context/ContextProvider.jsx";
import { Link } from 'react-router-dom';
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

const Register = () => {

  const nameRef = createRef()
  const emailRef = createRef()
  const passwordRef = createRef()
  const passwordConfirmationRef = createRef()
  const {setUser, setToken} = useStateContext()
  const [errors, setErrors] = useState(null)
  const {setNotification} = useStateContext()

  const onSubmit = ev => {
    ev.preventDefault()

    const payload = {
      name: nameRef.current.value,
      email: emailRef.current.value,
      password: passwordRef.current.value,
      password_confirmation: passwordConfirmationRef.current.value,
    }
    axiosClient.post('/signup', payload)
      .then(({data}) => {
        setUser(data.user);
        setToken(data.token);
        setNotification('Registered successfully')
      })
      .catch(err => {
        const response = err.response;
        if (response && response.status === 422) {
          setErrors(response.data.errors)
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
                        Become A Member
                      </div>
                    </div>
                    <div className="card-content">
                      <div className="card-body">
                        <form className="form-horizontal" onSubmit={onSubmit}>
                          {errors && (
                            <div className="danger">
                              {Object.keys(errors).map((key) => (
                                <p key={key}>{errors[key][0]}</p>
                              ))}
                            </div>
                          )}
                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="text"
                              className="form-control round"
                              id="user-name"
                              placeholder="Choose Username"
                              ref={nameRef}
                            />
                            <div className="form-control-position">
                              <i className="ft-user" />
                            </div>
                          </fieldset>
                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="email"
                              className="form-control round"
                              id="user-email"
                              placeholder="Your Email Address"
                              ref={emailRef}
                            />
                            <div className="form-control-position">
                              <i className="ft-mail" />
                            </div>
                          </fieldset>
                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="password"
                              className="form-control round"
                              id="user-password"
                              placeholder="Enter Password"
                              ref={passwordRef}
                            />
                            <div className="form-control-position">
                              <i className="ft-lock" />
                            </div>
                          </fieldset>
                          <fieldset className="form-group position-relative has-icon-left">
                            <input
                              type="password"
                              className="form-control round"
                              id="password_confirmation"
                              placeholder="Enter Confirm Password"
                              ref={passwordConfirmationRef}
                            />
                            <div className="form-control-position">
                              <i className="ft-lock" />
                            </div>
                          </fieldset>
                          <div className="form-group text-center">
                            <button
                              type="submit"
                              className="btn round btn-block btn-glow btn-bg-gradient-x-purple-blue col-12 mr-1 mb-1"
                            >
                              Register
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
                          Already a member ?
                          <Link to="/login" className="card-link">
                            Sign In
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

export default Register
