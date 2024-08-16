import React, { createRef } from "react";
import News from "../Services/News";
import Footer from "../components/Footer";
import { Button, Form, FormControl } from "react-bootstrap";
import Authors from "../Services/Authors";
import { useStateContext } from "../context/ContextProvider";
import axiosClient from "../axios-client";

const NewsLayout = () => {
  const searchRef = createRef();
  const { setNews, setMessage } = useStateContext();

  const GetSearchNews = ev => {
    ev.preventDefault()
    const payload = {
      search: searchRef.current.value,
    }

    axiosClient.post('searchnews', payload)
      .then(({ data }) => {
        setNews(data.data);
      })
      .catch((err) => {
        const response = err.response;
        if (response && response.status === 404) {
          setMessage(response.data.message)
        }
      })
  }

  return (
    <>
      <div className="row mt-5">

        <div className="col-6 mb-3">
          <h4>News Broadcasting</h4>
          <p>Customized Data</p>
          <hr />
        </div>

        <div className="col-6 mb-3">
          <h4>Authors</h4>
          <Authors />
          <hr />
        </div>

        <div className="col-6 mb-3">
          <h4>News Live Search</h4>
          <Form className="d-flex" onSubmit={GetSearchNews}>
            <FormControl
              type="search"
              ref={searchRef}
              placeholder="Search"
              className="me-2"
              aria-label="Search"
            />
            <Button type="submit" variant="outline-success">Search</Button>
          </Form>
          <hr />
        </div>
      </div>

      <News />

      <Footer />
    </>
  );
};

export default NewsLayout;
