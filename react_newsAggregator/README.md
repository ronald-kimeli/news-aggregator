News-aggregator
==========

Front-end implementation for news aggregator.

Table of Contents
-----------------

* [Requirements](#requirements)
* [Skills](#skills)
* [Installation](#installation)

Requirements
------------

News-aggregator front-endd requires the following to run:

* [Node.js][node] 16+
* [Vite][vite]
* [React Bootrsap][react_bootstrap]
* [Docker][docker]
* [React Router][react_router_dom]
* [Axios][axios]
* [React Toastify][toastify]

Skills
------------

* State management
* Authentication
* React Routing
* React Redux

Installation
------------

Clone Repository to your device:

```bash
git clone https://github.com/KimelirR/react-news-app.git
```

Navigate to the project Directory:

```bash
cd react-news-app
```

Build the Docker Image: name is react-news-app:

```bash
docker build -t react-news-app .
```

Run the Docker Container: Exposing port 5173 you will even check on your terminal:

```bash
docker run -p 5173:5173 react-news-app
```

> OR

Create the docker container using docker-compose. We are going to use .yml file:

```bash
docker-compose up -d
```

To kill or Stop Docker running, first of all check if status of our app 'react-news-app' is up:

```bash
docker ps
```

> Then stop id

```bash
docker stop id-of-image
```

> OR

Then, on the other way manually

Install project dependencies

```javascript
npm install
```

Run Local Server

```javascript
npm run dev
```

On your Browser navigate to .

```javascript
http://localhost:5173
```

> Ran seeder on backed! Yes login with credentials below
> My Email

```bash
kimeliryans@gmail.com
```

> Password

```bash
*noOneLike@%admin#
```

[node]: https://nodejs.org
[vite]: https://vitejs.dev
[react_bootstrap]: https://react-bootstrap.netlify.app
[docker]: https://www.docker.com
[react_router_dom]: https://reactrouter.com
[axios]: https://axios-http.com/docs/intro
[toastify]: https://fkhadra.github.io/react-toastify/introduction
