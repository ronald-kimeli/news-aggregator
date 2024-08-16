import React, { useEffect, useState } from 'react';
import { useStateContext } from "../context/ContextProvider";
import axiosClient from "../axios-client";
import Form from 'react-bootstrap/Form';

const Authors = () => {
  const { authors, setAuthors } = useStateContext();
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    getAuthors();
  }, []);

  const getAuthors = () => {
    setLoading(true);
    axiosClient
      .get("getauthors")
      .then(({ data }) => {
        setLoading(false);
        setAuthors(data.data);
      })
      .catch(() => {
        setLoading(false);
      });
  };

  return (
    <>
      {loading && (
        <p>Loading...</p>
      )}
      {!loading && (
        <Form.Select aria-label="Default select example" >
          <option>--Check or Select--</option>
          {authors.map((author) => (
            <option key={author.id} >{author.name}</option>
          ))}
        </Form.Select>
      )}
    </>
  );
};

export default Authors;

{
  /* <NavDropdown.Item className="shadow rounded">
          {authors.map((author) => (
            <li key={author.id}>
              <select>--select--</select>
              {author.name}
            </li>
          ))}
        </NavDropdown.Item> */
}


{/* <NavDropdown.Item className="shadow rounded">
{authors.map((author) => (
  <BootstrapSelect key={author.id}>
    <option>{author.name}</option>
  </BootstrapSelect>
))}
</NavDropdown.Item> */}