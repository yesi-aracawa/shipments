# README

## SHIPMENTS/ORDERS

- Ruby version: 2.5

- Rails version: '~> 5.2.4', '>= 5.2.4.4'

- Docker: if you want to run this environment on docker, make docker-compose --build, or restart an image docker-compose up

  - for interaction: docker exec -it shipments_web_1 bash

- Configuration:

  - bundle install
  - rails db:migrate
  - rails start / rails restart

- Database creation

  - Made it from docker image and PostgreSQL

- Docs
  - Shopify: https://shopify.dev/docs/admin-api/rest/reference/orders
  - Docker: https://docs.docker.com/compose/rails/
  - Rails: https://rubyonrails.org/
