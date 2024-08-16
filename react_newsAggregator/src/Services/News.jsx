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
    // Simulating event listener setup
    const newsEventListener = (event) => {
      if (event.type === "newNewsEvent") {
        getNews();
      }
    };
    // Replace 'newNewsEvent' with your actual event name for new news
    // Replace 'deleteNewsEvent' with your actual event name for news deletion
    newsEventListener({ type: "newNewsEvent" });
    // Cleanup: remove event listener on component unmount
    return () => {
      // Replace 'newNewsEvent' with your actual event name for new news
      // Replace 'deleteNewsEvent' with your actual event name for news deletion
      newsEventListener({ type: "newNewsEvent" });
    };
  }, []);

  const getNews = async() => {
    setLoading(true);
    await axiosClient
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
            <div className="spinner-border" role="status">
              <span className="visually-hidden">Loading...</span>
            </div>
            <hr />
          </div>
        </div>
      )}
      {!loading && (
        <section id="cardAnimation" className="cardAnimation">
          <div className="row">
            {news.map((newsItem) => ( 
              <div className="col-lg-4 col-md-6 col-sm-12" key={newsItem.id}
              >
                <Link
                      to={newsItem.web_url}
                      className="styleoflink"
                    >
                <div
                  className="card box-shadow-0"
                  data-appear="appear"
                  data-animation="zoomIn"
                >
                  <img
                    src={newsItem.image_url}
                    className="card-img-top  object-fit-thumb"
                    alt="news image"
                  ></img>

                  <div className="card-header white bg-success">
                    <h4 className="card-title white">{newsItem.title}</h4>
                  </div>
                  <div className="card-content collapse show">
                
                      <div className="card-body border-bottom-success">
                        <p className="card-text">{newsItem.description}</p>

                        <p className="card-text">
                          <small className="text-body-secondary mb-2">
                            <strong>Posted: {getReadableDate(newsItem.published_at)}</strong>
                          </small>
                        </p>
                      </div>
               
                  </div>
                </div>
                </Link>
              </div>
            ))}
          </div>
        </section>
      )}
    </>
  );
};

export default News;
