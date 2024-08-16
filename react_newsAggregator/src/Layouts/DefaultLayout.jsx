import { Link, Navigate, Outlet } from "react-router-dom";
import { useStateContext } from "../context/ContextProvider";
import axiosClient from "../axios-client.js";
import { useEffect } from "react";
import avatar4 from "../assets/images/portrait/small/avatar-s-4.png";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import "bootstrap/dist/css/bootstrap.min.css";
import {
  Navbar,
  Container,
  Nav,
  NavDropdown,
  Offcanvas,
  Button,
} from "react-bootstrap";

export default function DefaultLayout() {
  const { user, token, setUser, setToken, notification } = useStateContext();

  if (!token) {
    return <Navigate to="/login" />;
  }

  const onLogout = (ev) => {
    ev.preventDefault();

    axiosClient.post("/logout").then(() => {
      setUser({});
      setToken(null);
    });
  };

  useEffect(() => {
    axiosClient.get("/user").then(({ data }) => {
      setUser(data);
    });
  }, []);

  return (
    <div className="me-3 ms-3">
      <Navbar bg="success" expand={false} fixed="top" className="mb-5">
        <Container fluid>
          <Navbar.Brand to="#">News Aggregator</Navbar.Brand>
          
          <Navbar.Brand className="ms-auto" to="#">{user.name}</Navbar.Brand>

          {notification && (
            <ToastContainer
              position="top-center"
              autoClose={5000}
              hideProgressBar={false}
              newestOnTop={false}
              closeOnClick
              rtl={false}
              pauseOnFocusLoss
              draggable
              pauseOnHover
              theme="colored"
            ></ToastContainer>
          )}

          <Navbar.Toggle aria-controls="offcanvasNavbar" />
          <Navbar.Offcanvas
            id="offcanvasNavbar"
            aria-labelledby="offcanvasNavbarLabel"
            placement="end"
          >
            <Offcanvas.Header closeButton>
              <Offcanvas.Title id="offcanvasNavbarLabel">Profile</Offcanvas.Title>
            </Offcanvas.Header>
            <Offcanvas.Body>
              <Nav className="justify-content-end flex-grow-1 pe-3">
                <Nav.Link className="float-start" to="#action1">Sidear Item1</Nav.Link>
                <Nav.Link className="float-end" to="#action2">Sidebar Item 2</Nav.Link>
              </Nav>
              
            <NavDropdown title="Profile" id="offcanvasNavbarDropdown">
            <NavDropdown.Item>
              <span className="avatar avatar-online">
                <img src={avatar4} alt="avatar" />
                <span className="user-name text-bold-700 ml-1">
                  {user.name} &nbsp; &nbsp;
                </span>
              </span>
            </NavDropdown.Item>

            <NavDropdown.Divider />

            <NavDropdown.Item to="#action4">
              <i className="ft-user" /> Edit Profile
            </NavDropdown.Item>
            <NavDropdown.Item >
              <Button onClick={onLogout} className="btn btn-sm btn-danger">
                <i className="ft-power" /> Logout
              </Button>
            </NavDropdown.Item>
          </NavDropdown>
             
            </Offcanvas.Body>
          </Navbar.Offcanvas>
        </Container>
      </Navbar>
      <br />

      <Outlet />
    </div>
  );
}
