import React, { useEffect, useState } from 'react';

const NewsComponent = () => {
  const [news, setNews] = useState([]);

  useEffect(() => {
    // Function to fetch initial news data
    const fetchNews = async () => {
      try {
        const response = await fetch('/api/news');
        const data = await response.json();
        setNews(data);
      } catch (error) {
        console.error('Error fetching news:', error);
      }
    };

    // Function to handle database event
    const handleNewsEvent = (event) => {
      // Fetch and update news data when a new news event occurs
      if (event.type === 'newNewsEvent') {
        fetchNews();
      }
    };

    // Simulating event listener setup
    // Replace this with your actual event listener setup for the database
    const databaseEventListener = (event) => {
      handleNewsEvent(event);
    };

    // Fetch initial news data on component mount
    fetchNews();

    // Add event listener for news events on component mount
    // Replace 'newsEvent' with your actual event name for new news
    databaseEventListener({ type: 'newsEvent' });

    // Cleanup: remove event listener on component unmount
    return () => {
      // Replace 'newsEvent' with your actual event name for new news
      databaseEventListener({ type: 'newsEvent' });
    };
  }, []);

  return (
    <div>
      <h2>Latest News</h2>
      <ul>
        {news.map((item) => (
          <li key={item.id}>{item.title}</li>
        ))}
      </ul>
    </div>
  );
};

export default NewsComponent;
