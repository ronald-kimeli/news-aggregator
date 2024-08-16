# React Bakend news-aggregator

## Installation

* clone this project into your machine

```bash
git clone https://github.com/KimelirR/backend-laravel-api.git
```

* clone this project into your machine

```bash
cd backend-laravel-api
```

* create environment

```bash
cp .env.example .env
```

* Dockerize by building and running on detached mode

```bash
docker compose build --no-cache && docker compose up --force-recreate -d
```

* Clear cache first of all

```bash
docker compose exec lara php artisan config:clear
```

* Test laravel migration and the app container name is lara.

```bash
docker-compose exec lara php artisan migrate:fresh --seed
```

* Interact with database cli as a root user using command below, container name db.

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

> End

Then, on the other way manually

** Install project dependencies

  ```php
    composer install
  ```

* Generate key for laravel new application you have installed.

```php
php artisan key:generate
```

* Run the application

```php
php artisan migrate:fresh --seed
```

* Run the application

```php
php artisan serve
```

* Load newsapidata by running same http routes just like above

> Or import news_aggregator.sql database to the database and run

* The Frontend Image

    ![alt text](https://github.com/KimelirR/backend-laravel-api/blob/master/public/images/newsaggregator.png?raw=true)
