# SherlockConfiguration

## About this project

Sherlock configuration is a API used to manager configuration of SherlockBot.
Create with elixir and Phoenix, this application use postgres database to store configuration.

## Start dependencies

```bash
docker run --name=sherlock_configuration_dev -d -p 5432:5432  -e POSTGRES_PASSWORD=sa -e POSTGRES_USER=sa -e POSTGRES_DB=sherlock_configuration_dev postgres
```

### Add Support UUID

> connet to database set extension to support the uuid

```sql
select * from pg_extension;

CREATE EXTENSION "uuid-ossp";
```

## How to use

> To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

