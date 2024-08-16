import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { useStateContext } from "../context/ContextProvider";
import "./News.css";
import axiosClient from "../axios-client";

const News = () => {
  const { news, setNews } = useStateContext();
  const [loading, setLoading] = useState(false);

  const getReadableDate = (dataDate) => {
    let d = new Date(dataDate);
    let datem = d.toDateString();
    return datem;
  };

  useEffect(() => {
    getNews();
  }, []);

  const getNews = () => {
    setLoading(true);
    axiosClient
      .get("loadnews")
      .then(({ data }) => {
        setLoading(false);
        setNews(data.data);
      })
      .catch(() => {
        setLoading(false);
      });
  };

  return (
    <>
      {loading && (
        <div className="row mt-5">
          <div className="col-12 mb-3 d-flex justify-content-center">
            <div class="spinner-border" role="status">
              <span class="visually-hidden">Loading...</span>
            </div>
            <hr />
          </div>
        </div>
      )}
      {!loading && (
        <section id="cardAnimation" className="cardAnimation">
          <div className="row">
            {news.map((news) => (
              <div className="col-lg-4 col-md-6 col-sm-12" key={news.id}>
                <div
                  className="card box-shadow-0"
                  data-appear="appear"
                  data-animation="zoomIn"
                >
                  <img
                    src={news.image_url}
                    className="card-img-top"
                    alt="news image"
                  ></img>
                  <div className="card-header white bg-success">
                    <h4 className="card-title white">{news.title}</h4>
                  </div>
                  <div className="card-content collapse show">
                    <div className="card-body border-bottom-success">
                      <p className="card-text">{news.description}</p>

                      <p className="card-text styled">
                        <Link
                          to={news.web_url}
                          className="btn btn-outline-danger text-center col-4"
                        >
                          Link
                        </Link>
                      </p>

                      <p className="card-text">
                        <small className="text-body-secondary mb-2">
                          <strong>
                            Posted: {getReadableDate(news.published_at)}
                          </strong>
                        </small>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </section>
      )}
    </>
  );
};

export default News;
