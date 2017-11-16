# TodoList

TodoList sample and explanation for AlphaCamp lighthouse 2017Q4

## Installation

This project is available on Ruby 2.3.5 and Rails 5.0.2

You can install this project with few steps:

### Clone repository

Clone the source code from github to your computer.

```
$ git clone git@github.com:MitsunChieh/todo_list.git
```

### Generate configuration files

Generate a secret key into `/config/secrets.yml`

```
$ cd todo_list
$ echo -e "development:\n  secret_key_base: `rails secret`" | tee config/secrets.yml
```

Then create a new file call `database.yml` under your `/config` folder

/config/database.yml

```
default: &default
  adapter: sqlite3
  pool: 5
  timeout: 5000
development:
  <<: *default
  database: db/development.sqlite3
```

### Setup database

Setup your database and data seeds

```
$ bundle exec rails db:setup
```

### Run your application

```
$ bundle exec rails s
```

Then you can see your application in browser with this path

```
localhost:3000
```
