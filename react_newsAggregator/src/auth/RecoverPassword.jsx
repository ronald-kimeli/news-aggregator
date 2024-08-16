import React from 'react';
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

const RecoverPassword = () => {
  return (
    <div className="app-content content" style={styles.container} >
      <div className="content-wrapper">
        <div className="content-wrapper-before" />
        <div className="content-header row">
        </div>
        <div className="content-body"><section className="flexbox-container">
          <div className="col-12 d-flex align-items-center justify-content-center">
            <div className="col-lg-4 col-md-6 col-10 box-shadow-2 p-0">
              <div className="card border-grey border-lighten-3 px-2 py-2 m-0">
                <div className="card-header border-0">
                  <div className="text-center mb-1">
                    <img src={logo} style={{height:'80px',width:'87px'}} alt="branding logo" />
                  </div>
                  <div className="font-large-1  text-center">
                    Recover Password
                  </div>
                  <h6 className="card-subtitle line-on-side text-muted text-center font-small-3 pt-2">
                    <span>We will send you a link to reset password.</span>
                  </h6>
                </div>
                <div className="card-content">
                  <div className="card-body">
                    <form className="form-horizontal" >
                      <fieldset className="form-group position-relative has-icon-left">
                        <input type="email" className="form-control round" id="user-email" placeholder="Your Email Address" required />
                        <div className="form-control-position">
                          <i className="ft-mail" />
                        </div>
                      </fieldset>
                      <div className="form-group text-center">
                        <button type="submit" className="btn round btn-block btn-glow btn-bg-gradient-x-purple-blue col-12 mr-1 mb-1">Submit</button>
                      </div>
                    </form>
                  </div>
                </div>
                <div className="card-footer border-0 p-0">
                  <p className="float-sm-center text-center">Not a member ?
                    <Link to={'/signup'} className="card-link">Sign Up</Link>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </section>
        </div>
      </div>
    </div>
  )
}

export default RecoverPassword
