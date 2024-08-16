# News-aggregator based on React Frontend and Laravel api Backend

## Installation

* clone this project into your machine

```bash
git clone https://github.com/KimelirR/react-laravel-news-aggregator.git
```

* clone this project into your machine

```bash
cd react-laravel-news-aggregator
```

### Create environment. Note!! Dont skip this

```bash
cp laravel_api_newsAggregator/.env.example .env
```

* Provide Database credentials

```sql
DB_DATABASE=?Provide_DBName
DB_USERNAME=?Provide_UserName
DB_PASSWORD=?Provide_DBPassword
```

## Dockerize news aggregator

> Note!! backend api container name is:

```bash
news-aggregator-laravel-api
```

And frontend is:

```bash
news-aggregator-react-frontend
```

* Start by building the Docker image

```bash
docker compose build --no-cache 
```

* Run the Docker application container

```bash
docker compose up -d
```

## Run Laravel Backend

* First of all, clear config. The container **news-aggregator-laravel-api**

```bash
docker compose exec news-aggregator-laravel-api php artisan config:clear
```

* Run migration fresh.

```bash
docker-compose exec news-aggregator-laravel-api php artisan migrate:fresh --seed
```

* Spin the server.

```bash
docker-compose exec news-aggregator-laravel-api php artisan serve
```

* To Interact with database cli as a root user using command below, container name db.

```bash
docker compose exec db mysql -u root -p
```

* Run the application and on your Browser run .

```php
http://localhost:8000
```

* Load newsapidata to our database by refreshing code below.

```bash
 http://localhost:8000/api/fetchnewsapi
```

* Load fetchthegurdian to our database by refreshing code below.

```bash
 http://localhost:8000/api/fetchthegurdian
```

* Load fetchnewyorktimes to our database by refreshing code below.

```bash
 http://localhost:8000/api/fetchnewyorktimes
```

## Running React app

* Already react is running, navigate to.

```bash
http://127.0.0.1:5173
```

> Or import news_aggregator.sql database to the database and run

* The Frontend Image

    ![alt text](https://github.com/KimelirR/react-laravel-news-aggregator/laravel_api_newsAggregator/blob/master/public/images/newsaggregator.png?raw=true)
# news-aggregator
