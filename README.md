# Docker Starter for PHP Projects

This is a docker base project for php projects

<br />

## Features

- Nginx stable-alpine
- PHP 7.4-fpm
- MySQL 5.7
- Phpmyadmin
- Xdebug v3.1.4

<br />

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`DB_DATABASE=your_database`

`DB_USER=your_user`

`DB_PASSWORD=your_password`

`XDEBUG_MODE=develop,debug`

`XDEBUG_CONFIG="client_host=host.docker.internal"`

<br />

> In case of you use linux, run `docker inspect -f {{range.NetworkSettings.Networks}}{{.Gateway}}{{end}} dc_php`, replace `host.docker.internal` with the result in the `.env` file

<br />

## Installation

You need to have `docker` and `docker-compose` installed

```bash
  git clone https://github.com/dcyar/docker-php-starter
```

```bash
  cd docker-php-starter
```

```bash
  docker-compose up -d
```

Copy your php project to app folder

Open `http://localhost` on your browser

Open `http://localhost:8080` for `Phpmyadmin`

Enjoy :)

<br />

## Author

- [@dcyar](https://www.github.com/dcyar)
