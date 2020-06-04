<div align="center">
    <h1><img src="docs/logo.png" alt="Playerly Logo"></h1>
    <h3>Stronger together! Find clubs, grow communities, support the sports you love.</h3>
</div>

## Overview

[todo]

## Getting started

Following these instructions will get you a copy of Playerly up and running for development and testing purposes.

### Prerequisites

Before you begin setting up Playerly, make sure you have done the following:

- Have a Heroku account set up
- Install Git, Node.js, Yarn and the Heroku CLI
- Install Ruby 2.6.6 and Rails 6.0.2.2

### Setup

Clone the repository and using command line, change the directory to the project folder and install the needed packages.

```
$ bundle install --without production
$ yarn --cwd client install
```

Generate a new secret key base and copy it.

```
$ rails secret
```

Navigate to `config > secrets.yml` and replace `YOUR_FIRST_RAILS_SECRET_STRING_HERE` with the secret key base you copied. Repeat the generation step and replace `YOUR_SECOND_RAILS_SECRET_STRING_HERE` with the second secret key base.

```
development:
  secret_key_base: YOUR_FIRST_RAILS_SECRET_STRING_HERE

test:
  secret_key_base: YOUR_SECOND_RAILS_SECRET_STRING_HERE

production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
```

Migrate the database.

```
$ rails db:migrate
```

Run the test suite to verify that everything is working.

```
$ rails test
```

If the test suite passes, seed the database with the sample data we have prepared for it.

```
$ rails db:seed
```

Run the development environment. You can access the client by typing `http://localhost:3000/` in a browser and the admin interface at `http://localhost:3001/admin/`.

```
$ rails start
```

### Deployment

Create a new Heroku application. Note down the non-git URL that appears from the command's output as this will be what you would enter in a browser to visit the deployed project.

```
$ heroku create
```

Specify the Heroku buildpacks and in what order to run them.

```
$ heroku buildpacks:add heroku/nodejs --index 1
$ heroku buildpacks:add heroku/ruby --index 2
```

Deploy the project to Heroku.

```
$ git push heroku master
```

Seed the database on Heroku.

```
$ heroku run rails db:seed
```

Enter the URL you noted down from creating the Heroku application in a browser. If you followed all the steps correctly, you should be greeted with Playerly's landing page.
