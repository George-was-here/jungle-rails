# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Screenshots

![Jungle Home Page!](https://github.com/George-was-here/jungle-rails/blob/master/docs/home-screen.png?raw=true)
![User Login Page!](https://github.com/George-was-here/jungle-rails/blob/master/docs/user-login.png?raw=true)
![A Full Cart!](https://github.com/George-was-here/jungle-rails/blob/master/docs/a-full-cart.png?raw=true)
![Admin Dashboard!](https://github.com/George-was-here/jungle-rails/blob/master/docs/admin-dashboard.png?raw=true)
![Admin Add Category Page!](https://github.com/George-was-here/jungle-rails/blob/master/docs/admin-add-category.png?raw=true)
![About Us!](https://github.com/George-was-here/jungle-rails/blob/master/docs/about-us.png?raw=true)
![Zoomed Out Home Page!](![About Us!](https://github.com/George-was-here/jungle-rails/blob/master/docs/home-page-zoomed-out.png?raw=true))

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Tech Stack

- Ruby
- Rails 
- CSS
- ERB

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Testing Dependencies

- Cypress 
- RSpec


